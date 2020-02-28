unit UPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls, System.Types,
  Vcl.Buttons, Vcl.ComCtrls, Character, Vcl.Menus;

type
  TfrPesquisar = class(TForm)
    gridPesquisa: TStringGrid;
    pnPesquisa: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    edFraseIngles: TEdit;
    Label1: TLabel;
    edFraseTraduzida: TEdit;
    btPesquisarIngles: TBitBtn;
    btPesquisarTraduzido: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    edTextoOriginal: TEdit;
    edTextoSubstituir: TEdit;
    btSubstituir: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    edTamanhoFrase: TEdit;
    btPesquisarLinhasInglesTamanhoMaiorTamanhoFrase: TBitBtn;
    TabSheet4: TTabSheet;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Label8: TLabel;
    edArquivoGlossario: TEdit;
    Button1: TButton;
    pnBotoesConsultaGlossario: TPanel;
    btPesquisarSelecionado: TBitBtn;
    btPesquisarViolacaoGlossario: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    lbTamanhosIngles: TLabel;
    lbTamanhosTraduzido: TLabel;
    btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFrase: TBitBtn;
    ckIgnorarLinhasComentario: TCheckBox;
    Panel2: TPanel;
    lbInfo: TLabel;
    btLimparEdGlossrio: TButton;
    gridGlossario: TStringGrid;
    btPesquisarViolacaoSelecionado: TBitBtn;
    Label11: TLabel;
    Label6: TLabel;
    edLinhaInicial: TEdit;
    Label7: TLabel;
    edLinhaFinal: TEdit;
    Label12: TLabel;
    lbTamanhosEspanhol: TLabel;
    btPesquisarLinhasEspanholTamanhoMaiorTamanhoFrase: TBitBtn;
    PopupMenu1: TPopupMenu;
    IgnorarVe1: TMenuItem;
    procedure gridPesquisaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btPesquisarTraduzidoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure gridPesquisaClick(Sender: TObject);
    procedure btPesquisarInglesClick(Sender: TObject);
    procedure btSubstituirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btPesquisarLinhasInglesTamanhoMaiorTamanhoFraseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btPesquisarSelecionadoClick(Sender: TObject);
    procedure btPesquisarViolacaoGlossarioClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFraseClick(
      Sender: TObject);
    procedure btLimparEdGlossrioClick(Sender: TObject);
    procedure btPesquisarViolacaoSelecionadoClick(Sender: TObject);
    procedure edLinhaInicialExit(Sender: TObject);
    procedure edLinhaFinalExit(Sender: TObject);
    procedure btPesquisarLinhasEspanholTamanhoMaiorTamanhoFraseClick(
      Sender: TObject);
    procedure IgnorarVe1Click(Sender: TObject);
  private
    { Private declarations }
    nomeArquivoIgnorarGlossario: string ;
    linhasIgnorarGlossario: TStringList ;

    procedure pesquisar(coluna: integer; texto: string);
    procedure btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(colunaGrid: integer);
    function temTextoAntes(texto: string; pos: integer): boolean;
    function temTextoDepois(palavra: string; texto: string; pos: integer): boolean;
    function estaListaIgnorarGlossario(linhaArquivo:integer; termoGlossario: string): boolean ;
    //procedure inicializaComponentesParaPesquisa ;
  public
    { Public declarations }
  end;

var
  frPesquisar: TfrPesquisar;

implementation

{$R *.dfm}

uses URevisor;

//-----------------------------------------------------------------------------
// Retorna true se o caractere antes da posicao no texto for letra, _ ou -
//-----------------------------------------------------------------------------
function TfrPesquisar.temTextoAntes(texto: string; pos: integer): boolean;
Begin
  if (pos >= 1) and ((Character.IsLetterOrDigit(texto[pos])) or (texto[pos] = '_') or (texto[pos] = '-') ) then
     temTextoAntes := true
  else
     temTextoAntes := false ;
End;

//-----------------------------------------------------------------------------
// Retorna true se o caractere antes da posicao no texto for letra, _ ou -
//-----------------------------------------------------------------------------
function TfrPesquisar.temTextoDepois(palavra: string; texto: string; pos: integer): boolean;
var posFim: integer ;
Begin
  posFim := pos + length(palavra)+1 ;
 if ((pos + length(palavra)) < length(texto))
        and ((Character.IsLetterOrDigit(texto[posFim])) or (texto[posFim] = '_') or (texto[posFim] = '-')) then
     temTextoDepois := true
  else
     temTextoDepois := false ;
End;

//--------------------------------------------------------
// Pesquisa por um texto na coluna informada
//--------------------------------------------------------
procedure TfrPesquisar.pesquisar(coluna: integer; texto: string);
var i, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    textoLinha: string ;
    pos: integer ;
    linhaInicial, linhaFinal: integer;
begin
  // Recupera linha de inicio e fim
  linhaInicial := 1 ;
  linhaFinal := frRevisor.StringGrid1.RowCount ;
  if (length(edLinhaInicial.Text) > 0) then linhaInicial := Integer.Parse(edLinhaInicial.Text) ;
  if (length(edLinhaFinal.Text) > 0) then linhaFinal := Integer.Parse(edLinhaFinal.Text) ;


  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas correspondentes à pesquisa
  //for i := 1 to gridRevisor.RowCount do begin  1, frRevisor.StringGrid1.RowCount
  texto := texto.ToUpper ;
  for i := linhaInicial to linhaFinal do begin
    textoLinha := gridRevisor.Cells[coluna,i].ToUpper.Replace('\N', ' ').Replace('\R', '') ;
    if(textoLinha.Contains(texto)) then begin

      // Se não encontrou uma palavra inteira, ignora
      pos := textoLinha.IndexOf(texto) ;
      if temTextoAntes(textoLinha, pos) then continue ;
      if temTextoDepois(texto, textoLinha, pos) then continue ;

      numEncontrados := numEncontrados + 1;
      gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
      gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
      for j := 1 to gridRevisor.ColCount do begin
        gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
end;

function SortDesc(List: TStringList; Index1, Index2: Integer): Integer;
begin
  // Negate the result so a descending sort is done.
  Result := Integer.Parse(List[Index2]) - Integer.Parse(List[Index1]);
end;

procedure TfrPesquisar.TabSheet3Show(Sender: TObject);
var i, tamanhoIngles, tamanhoTraduzido, tamanhoEspanhol: integer ;
    listaIngles, listaTraduzido, listaEspanhol: TStringList ;
    gridRevisor: TStringGrid;
    linhaInicio, linhaFim: integer;
    maxFrasesIngles, maxFrasesTraduzido, maxFrasesEspanhol, aux: integer ;
begin
 // Inicializa componentes
 gridRevisor := frRevisor.StringGrid1 ;
 lbTamanhosIngles.Caption := '' ;
 lbTamanhosTraduzido.Caption := '' ;
 lbTamanhosEspanhol.Caption := '' ;
 maxFrasesIngles := 0;
 maxFrasesTraduzido := 0;
 maxFrasesEspanhol := 0;
 listaIngles := TStringList.Create;
 listaIngles.Duplicates := dupIgnore ;
 //listaIngles.CustomSort(SortDesc);
 //listaIngles.Sorted := true ;

 listaTraduzido := TStringList.Create;
 listaTraduzido.Duplicates := dupIgnore ;
 //listaTraduzido.CustomSort(SortDesc);
 //listaTraduzido.Sorted := true ;

 listaEspanhol := TStringList.Create;
 listaEspanhol.Duplicates := dupIgnore ;

   // Recupera linha de inicio e fim
  linhaInicio := 1 ;
  linhaFim := frRevisor.StringGrid1.RowCount ;
  if (length(edLinhaInicial.Text) > 0) then linhaInicio := Integer.Parse(edLinhaInicial.Text) ;
  if (length(edLinhaFinal.Text) > 0) then linhaFim := Integer.Parse(edLinhaFinal.Text) ;

 // Constroi lista com os tamanhos maximos das frases
 aux := 0 ;
 for i := linhaInicio to linhaFim do begin
    if(ckIgnorarLinhasComentario.Checked and (gridRevisor.Cells[1,i].StartsWith('--'))) //or gridRevisor.Cells[1,i].StartsWith('(REPETIDO)--')))
      then continue ;

    // Recupera o número de frases e guarda se ele for o maior até agora
    aux := length(frRevisor.Split(gridRevisor.Cells[1,i], '\n'));
    if(aux > maxFrasesIngles) then maxFrasesIngles := aux ;

    // Recupera o tamanho das frases e adiciona na lista
    tamanhoIngles := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[1,i]);
    if(listaIngles.IndexOf(Integer.ToString(tamanhoIngles)) < 0) then
      listaIngles.Add(Integer.ToString(tamanhoIngles)) ;
 end;

 aux := 0 ;
 for i := linhaInicio to linhaFim do begin
    if(ckIgnorarLinhasComentario.Checked and (gridRevisor.Cells[2,i].StartsWith('--'))) //or gridRevisor.Cells[2,i].StartsWith('(REPETIDO) --')))
      then continue ;

    // Recupera o número de frases e guarda se ele for o maior até agora
    aux := length(frRevisor.Split(gridRevisor.Cells[2,i], '\n'));
    if(aux > maxFrasesTraduzido) then maxFrasesTraduzido := aux ;

    // Recupera o tamanho das frases e adiciona na lista
    tamanhoTraduzido := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[2,i]);
    if(listaTraduzido.IndexOf(Integer.ToString(tamanhoTraduzido)) < 0) then
      listaTraduzido.Add(Integer.ToString(tamanhoTraduzido)) ;
 end;

 aux := 0 ;
 if(frRevisor.pnEspanhol.visible) then
 for i := linhaInicio to linhaFim do begin
    if(ckIgnorarLinhasComentario.Checked and (gridRevisor.Cells[3,i].StartsWith('--'))) //or gridRevisor.Cells[1,i].StartsWith('(REPETIDO)--')))
      then continue ;

    // Recupera o número de frases e guarda se ele for o maior até agora
    aux := length(frRevisor.Split(gridRevisor.Cells[3,i], '\n'));
    if(aux > maxFrasesEspanhol) then maxFrasesEspanhol := aux ;

    // Recupera o tamanho das frases e adiciona na lista
    tamanhoEspanhol := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[3,i]);
    if(listaEspanhol.IndexOf(Integer.ToString(tamanhoEspanhol)) < 0) then
      listaEspanhol.Add(Integer.ToString(tamanhoEspanhol)) ;
 end;

 // Atualiza labels
// listaIngles.Sort;
// listaTraduzido.Sort;
 listaIngles.CustomSort(SortDesc);
 listaTraduzido.CustomSort(SortDesc);
 listaEspanhol.CustomSort(SortDesc);

 lbTamanhosIngles.Caption := '(máx ' + Integer.ToString(maxFrasesIngles) + ' frases) ' + listaIngles.CommaText ;
 lbTamanhosTraduzido.Caption := '(máx ' + Integer.ToString(maxFrasesTraduzido) + ' frases) ' + listaTraduzido.CommaText ;
 lbTamanhosEspanhol.Caption := '(máx ' + Integer.ToString(maxFrasesEspanhol) + ' frases) ' + listaEspanhol.CommaText ;

end;

procedure TfrPesquisar.BitBtn1Click(Sender: TObject);
var i, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    textoTraduzido, textoIngles: string;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas correspondentes à pesquisa
  for i := 1 to gridRevisor.RowCount do begin
    textoTraduzido := gridRevisor.Cells[2,i] ;
    textoIngles := gridRevisor.Cells[1,i] ;

    if(length(frRevisor.split(textoTraduzido, '\n')) <>  length(frRevisor.split(textoIngles, '\n'))) then begin
      numEncontrados := numEncontrados + 1;
      gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
      gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
      for j := 1 to gridRevisor.ColCount do begin
        gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
end;

procedure TfrPesquisar.BitBtn2Click(Sender: TObject);
var linhaInicio, linhaFim: integer ;
begin
pesquisar(2, edTextoOriginal.Text) ;
end;

procedure TfrPesquisar.btPesquisarSelecionadoClick(Sender: TObject);
begin
  pesquisar(1, gridGlossario.Cells[0, gridGlossario.Row].Trim) ;
end;

//---------------------------------------------------------------------------------
// Verifica se a linha com o termo em ingles está no ignore list do glossario
//---------------------------------------------------------------------------------
function TfrPesquisar.estaListaIgnorarGlossario(linhaArquivo:integer; termoGlossario: string): boolean ;
var posRegraIgnorarGlossario: integer;
    linhaIgnorarGlossario, termosIgnorarGlossario: string ;
    termosIgnorar: TStringDynArray ;
    k: integer ;
Begin
    // Se não foi carregada a lista de ignorar glossario, retorna aqui
    if(linhasIgnorarGlossario = nil) then begin
      estaListaIgnorarGlossario:= false ;
      exit ;
    end;

    // Verifica se exite na lista de ignorar glossario uma entrada com a linha do arquivo
    posRegraIgnorarGlossario := linhasIgnorarGlossario.IndexOfName(Integer.ToString(linhaArquivo)) ;
    if(posRegraIgnorarGlossario < 0) then begin
       estaListaIgnorarGlossario := false ;
       exit ;
    end;

    // Recupera a regra para ignorar glossario
    linhaIgnorarGlossario := linhasIgnorarGlossario.Names[posRegraIgnorarGlossario];
    termosIgnorarGlossario := linhasIgnorarGlossario.ValueFromIndex[posRegraIgnorarGlossario];

    // Verifica os valores que devem ser ignorados individuais
    termoGlossario := termoGlossario.ToLower ;
    termosIgnorar := frRevisor.Split(termosIgnorarGlossario, ';');
    for k := 0 to length(termosIgnorar)-1 do Begin
        if(termosIgnorar[k].ToLower = termoGlossario) then begin
           estaListaIgnorarGlossario:= true ;
            exit ;
        end;
    End;
End;

procedure TfrPesquisar.btPesquisarViolacaoGlossarioClick(Sender: TObject);
var i, ig, pos, j, k, trad, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    inglesGlossario, inglesRevisor: string ;
    traduzidoGlossario, traduzidoRevisor: string ;
    traducoesTermo: TStringDynArray ;
    deveIncluir : boolean ;
    achou: boolean ;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas que não estão de acordo com o glossario
  for i := 1 to gridRevisor.RowCount do begin
    inglesRevisor := gridRevisor.Cells[1, i].ToLower.Replace('\n', ' ').Replace('\r', '') ; ;
    traduzidoRevisor := gridRevisor.Cells[2, i].ToLower.Replace('\n', ' ').Replace('\r', '') ; ;

    for ig := 1 to gridGlossario.RowCount do begin
      // Recupera as palavras do glosssario
      inglesGlossario := gridGlossario.Cells[0, ig-1].ToLower.Trim ;

      // Se a linha do glossario contem #, ignora
      if(inglesGlossario.StartsWith('#')) then continue ;

      // Se a frase do revisor nao contem o termo do glossario, passa para a proxima frase do glossario
      if(not inglesRevisor.Contains(inglesGlossario)) then continue ;

      // Verifica se existe antes da palavra buscada um caractere. Se existir e for diferente de espaco, ignora o texto
      pos := inglesRevisor.IndexOf(inglesGlossario) ;
      if(temTextoAntes(inglesRevisor, pos)) then continue ;
      if temTextoDepois(inglesGlossario, inglesRevisor, pos) then continue ;

      traduzidoGlossario := gridGlossario.Cells[1, ig-1].ToLower.Trim ;
      traducoesTermo := frRevisor.Split(traduzidoGlossario, ';');

      // Verifica se achou alguma traducao do termo
      achou := false ;
      for k := 0 to length(traducoesTermo)-1 do Begin
          if(inglesRevisor.Contains(inglesGlossario) and (traduzidoRevisor.Contains(traducoesTermo[k]))) then begin
             achou := true ;
             break ;
          end;
      End;

      // Verifica se a linha com o termo em ingles está no ignore list do glossario
      if(not achou) and estaListaIgnorarGlossario(i, inglesGlossario) then achou:= true ;

      if(not achou) then begin
          numEncontrados := numEncontrados + 1;
          gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
          gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
          for j := 1 to gridRevisor.ColCount do begin
             gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
             if(j = 1) then
                gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridPesquisa.Cells[j, gridPesquisa.RowCount-1]
                   + ' (' + inglesGlossario + '->' + traduzidoGlossario + ')' ;
          end;
          // Passa para a proxima linha do texto
          continue;
      end;

      {
      for trad := 0 to length(traducoesTermo) do Begin
          traduzidoGlossario := traducoesTermo[trad] ;
          // Se a linha de texto contem o texto em ingles, mas nao contem o texto traduzido, adiciona
          deveIncluir := false ;
          if(inglesRevisor.Contains(inglesGlossario) and (not traduzidoRevisor.Contains(traduzidoGlossario))) then begin
            deveIncluir := true ;

            // Verifica se existe antes da palavra buscada um caractere. Se existir e for diferente de espaco, ignora o texto
            pos := inglesRevisor.IndexOf(inglesGlossario) ;
            if (pos > 1) and (inglesRevisor[pos] <> ' ') then deveIncluir := false ;
            if ((pos + length(inglesGlossario)) < length(inglesRevisor)) and (inglesRevisor[pos + length(inglesGlossario)+1] <> ' ') then deveIncluir := false ;
          end;

          if(deveIncluir) then begin
             numEncontrados := numEncontrados + 1;
             gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
             gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
             for j := 1 to gridRevisor.ColCount do begin
                gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
                if(j = 1) then
                   gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridPesquisa.Cells[j, gridPesquisa.RowCount-1]
                      + ' (' + inglesGlossario + '->' + traduzidoGlossario + ')' ;
             end;
             // Passa para a proxima linha do texto
             break;
          end;
       End;
       }
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
end;

procedure TfrPesquisar.btPesquisarViolacaoSelecionadoClick(Sender: TObject);
var i, ig, pos, j, k, trad, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    inglesGlossario, inglesRevisor: string ;
    traduzidoGlossario, traduzidoRevisor: string ;
    traducoesTermo: TStringDynArray ;
    deveIncluir : boolean ;
    achou: boolean ;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas que não estão de acordo com o glossario
  for i := 1 to gridRevisor.RowCount do begin
    inglesRevisor := gridRevisor.Cells[1, i].ToLower.Replace('\n', ' ').Replace('\r', '') ;
    traduzidoRevisor := gridRevisor.Cells[2, i].ToLower.Replace('\n', ' ').Replace('\r', '') ;

    ig := gridGlossario.Row ;
    // Recupera as palavras do glosssario
    inglesGlossario := gridGlossario.Cells[0, ig].ToLower.Trim ;

    // Se a linha do glossario contem #, ignora
    if(inglesGlossario.StartsWith('#')) then continue ;

    // Se a frase do revisor nao contem o termo do glossario, passa para a proxima frase do glossario
    if(not inglesRevisor.Contains(inglesGlossario)) then continue ;

    // Verifica se existe antes da palavra buscada um caractere. Se existir e for diferente de espaco, ignora o texto
    pos := inglesRevisor.IndexOf(inglesGlossario) ;
    if(temTextoAntes(inglesRevisor, pos)) then continue ;
    if temTextoDepois(inglesGlossario, inglesRevisor, pos) then continue ;

    traduzidoGlossario := gridGlossario.Cells[1, ig].ToLower.Trim ;
    traducoesTermo := frRevisor.Split(traduzidoGlossario, ';');

    // Verifica se achou alguma traducao do termo
    achou := false ;
    for k := 0 to length(traducoesTermo)-1 do Begin
          if(inglesRevisor.Contains(inglesGlossario) and (traduzidoRevisor.Contains(traducoesTermo[k]))) then begin
             achou := true ;
             break ;
          end;
    End;

    // Verifica se a linha com o termo em ingles está no ignore list do glossario
    if(not achou) and estaListaIgnorarGlossario(i, inglesGlossario) then achou:= true ;

    if(not achou) then begin
        numEncontrados := numEncontrados + 1;
        gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
        gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
        for j := 1 to gridRevisor.ColCount do begin
           gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
           if(j = 1) then
              gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridPesquisa.Cells[j, gridPesquisa.RowCount-1]
                 + ' (' + inglesGlossario + '->' + traduzidoGlossario + ')' ;
        end;
        // Passa para a proxima linha do texto
        continue;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
end;

procedure TfrPesquisar.btPesquisarInglesClick(Sender: TObject);
begin
  pesquisar(1, edFraseIngles.Text) ;
end;

//--------------------------------------------------------------------------------
// Recupera linhas com tamanho maior que o informado na caixa de entrada
////--------------------------------------------------------------------------------
procedure TfrPesquisar.btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(colunaGrid: integer);
var i, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    textoTraduzido: string;
    linhaInicio, linhaFim: integer ;
    textoColuna: string ;
    tamanhoFrase, tamanhoMaximoFrase: integer ;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Recupera o tamanho maximo da frase
  if (length(edTamanhoFrase.Text) = 0) then exit ;
  tamanhoMaximoFrase := Integer.Parse(edTamanhoFrase.Text) ;

  // Recupera linha de inicio e fim
  linhaInicio := 1 ;
  linhaFim := gridRevisor.RowCount ;
  if (length(edLinhaInicial.Text) > 0) then linhaInicio := Integer.Parse(edLinhaInicial.Text) ;
  if (length(edLinhaFinal.Text) > 0) then linhaFim := Integer.Parse(edLinhaFinal.Text) ;

  // Coloca na grid as linhas correspondentes à pesquisa
  for i := linhaInicio to linhaFim do begin
    // Recupera o texto da coluna
    textoColuna := gridRevisor.Cells[colunaGrid,i] ;
    if(ckIgnorarLinhasComentario.Checked and textoColuna.StartsWith('--')) then continue ;
    //if(ckIgnorarLinhasComentario.Checked and textoColuna.StartsWith('(REPETIDO)--')) then continue ;

    // Recupera o tamanho da maior frase
    tamanhoFrase := frRevisor.getTamanhoMaiorFrase(textoColuna) ;

    // Verifica se o criterio de pesquisa se aplica aqui
    if(tamanhoFrase > tamanhoMaximoFrase) then begin
      numEncontrados := numEncontrados + 1;
      gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
      gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
      for j := 1 to gridRevisor.ColCount do begin
        textoColuna := gridRevisor.Cells[j, i] + '(' + inttostr(frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[j, i])) +')' ;
        gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := textoColuna ;
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
end;


procedure TfrPesquisar.btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFraseClick(
  Sender: TObject);
begin
  btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(2) ;
end;

procedure TfrPesquisar.btPesquisarLinhasEspanholTamanhoMaiorTamanhoFraseClick(
  Sender: TObject);
begin
  btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(3) ;
end;

procedure TfrPesquisar.btPesquisarLinhasInglesTamanhoMaiorTamanhoFraseClick(Sender: TObject);
begin
  btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(1) ;
end;

procedure TfrPesquisar.btPesquisarTraduzidoClick(Sender: TObject);
begin
  pesquisar(2, edFraseTraduzida.Text) ;
end;

procedure TfrPesquisar.btSubstituirClick(Sender: TObject);
var txOriginal, txSubstituir, txtMemoTraduzido : string ;
    gridRevisor: TStringGrid;
    i, numEncontrados: integer ;
    linhaInicio, linhaFim: integer ;
begin
  // Inicializa substituicao
  txOriginal := edTextoOriginal.Text ;
  txSubstituir := edTextoSubstituir.Text ;
  gridRevisor := frRevisor.StringGrid1 ;
  numEncontrados := 0;

  // Recupera linha de inicio e fim
  linhaInicio := 1 ;
  linhaFim := frRevisor.StringGrid1.RowCount ;
  if (length(edLinhaInicial.Text) > 0) then linhaInicio := Integer.Parse(edLinhaInicial.Text) ;
  if (length(edLinhaFinal.Text) > 0) then linhaFim := Integer.Parse(edLinhaFinal.Text) ;

  // Susbstitui o texto na grid
  for i := linhaInicio to linhaFim do begin
    if(gridRevisor.Cells[2,i].Contains(txOriginal)) then begin
      gridRevisor.Cells[2,i] := gridRevisor.Cells[2,i].Replace(txOriginal, txSubstituir) ;
      numEncontrados := numEncontrados + 1;
    end;
  end;

  // Substitui o texto no memo atual
  txtMemoTraduzido := frRevisor.MemoTraduzido.Text ;
  if(txtMemoTraduzido.Contains(txOriginal)) then begin
     frRevisor.MemoTraduzido.Text := txtMemoTraduzido.Replace(txOriginal, txSubstituir) ;
  end;

  lbInfo.Caption := 'Foram feitas ' + Integer.ToString(numEncontrados) + ' substituições.' ;
  //gridPesquisa.Repaint ;
  FormResize(gridPesquisa);
  frRevisor.salvarTodosArquivos;
end;

procedure TfrPesquisar.Button1Click(Sender: TObject);
var Values: TStringList ;
    i, numLinhas, teste: integer ;
begin
  if (edArquivoGlossario.Text = '') and (OpenDialog1.Execute) then
     edArquivoGlossario.Text := OpenDialog1.FileName ;

   if edArquivoGlossario.Text <> '' then begin
     // Inicializa grid de glossario
    Values := TStringList.Create;
    Values.LoadFromFile(edArquivoGlossario.Text);
    gridGlossario.RowCount := 0;

    // Tenta carregar o arquivo contendo as linhas do glossario que serao ignoradas
    nomeArquivoIgnorarGlossario := edArquivoGlossario.Text + '.ignorar_glossario' ;
    if FileExists(nomeArquivoIgnorarGlossario) then
    Begin
      if(linhasIgnorarGlossario <> nil) then FreeAndNil(linhasIgnorarGlossario);
      linhasIgnorarGlossario := TStringList.Create ;
      linhasIgnorarGlossario.LoadFromFile(nomeArquivoIgnorarGlossario);
    End;

     // Carrega glossario na grid
     numLinhas := 0 ;
     for i := 0 to Values.Count - 1 do begin
        if(Values.Strings[i].Trim.Length = 0) then continue ;

        // Ignora linhas começando com #
        inc(numLinhas);
        if(Values.Strings[i].StartsWith('#')) then begin
           gridGlossario.Cells[0, i] := Values.Strings[i] ;
        end else begin
           gridGlossario.Cells[0, i] := Values.Names[i].Trim;
           gridGlossario.Cells[1, i] := Values.ValueFromIndex[i].Trim;

        end;
     end;
  End;

  gridGlossario.RowCount := numLinhas ;
  FreeAndNil(Values);
end;

procedure TfrPesquisar.edLinhaFinalExit(Sender: TObject);
begin
TabSheet3Show(Sender) ;
end;

procedure TfrPesquisar.edLinhaInicialExit(Sender: TObject);
begin
  TabSheet3Show(Sender) ;
end;

procedure TfrPesquisar.btLimparEdGlossrioClick(Sender: TObject);
begin
edArquivoGlossario.Text := '' ;
nomeArquivoIgnorarGlossario := '' ;
lbInfo.Caption := '' ;
end;

procedure TfrPesquisar.FormResize(Sender: TObject);
var numColunas : integer ;
begin
  // Ajusta a largura da grid para exibicao de 3 ou 4 colunas
  numColunas := gridPesquisa.ColCount ;

  // Ajusta a largura da primeira coluna
  gridPesquisa.DefaultColWidth := (frPesquisar.Width-10) div (numColunas-1);
  gridGlossario.DefaultColWidth := (frPesquisar.Width-pnBotoesConsultaGlossario.Width-10) div 2;
  gridPesquisa.ColWidths[0] := 50 ;
  gridPesquisa.Repaint ;
end;

procedure TfrPesquisar.gridPesquisaClick(Sender: TObject);
var linhaSelecionada : integer ;
    linhaGridRevisor: integer ;
begin
  linhaSelecionada := gridPesquisa.Row ;
  if(linhaSelecionada > 0) then
  Begin
     linhaGridRevisor:= Integer.Parse(gridPesquisa.Cells[0, linhaSelecionada]) ;
     frRevisor.StringGrid1.Row := linhaGridRevisor ;
     frRevisor.mantemLinhaSelecionadaMeioGrid;
  End;
end;

procedure TfrPesquisar.gridPesquisaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  grid: TStringGrid;
  S: String;
  drawrect: TRect;
  bgFill: TColor;
  i: Integer;
  traducao, textoIngles : string ;
begin
  grid := Sender as TStringGrid;

  // Pinta dessa cor se a celula está na mesma linha da selecionada
  if (gdSelected in State) or (Arow = Grid.Row) then
     bgFill := $FFF0D0
  else
      bgFill := clWhite ;

  grid.Canvas.Brush.Color := bgFill;
  grid.canvas.Brush.Style := bsSolid;
  grid.canvas.fillrect(Rect);

  S := grid.Cells[ACol, ARow];

  // Ajusta a largura e altura das células da grid
  S := grid.Cells[ACol, ARow];
  if Length(S) > 0 then
  begin
    drawrect := Rect;
    drawrect.Inflate(-4 , 0);
    DrawText(grid.canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left);
    If (drawrect.bottom - drawrect.top) > grid.RowHeights[ARow] then
      grid.RowHeights[ARow] := (drawrect.bottom - drawrect.top+2)
      // changing the row height fires the event again!
    else
    begin
      drawrect.Right := Rect.Right;
      DrawText(grid.canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
    end;
  end;

  if gdFocused in State then
    grid.Canvas.DrawFocusRect(Rect);
end;

//Delete a row of a TStringGrid
procedure DeleteRow(StringGrid: TStringGrid; ARow: integer);
var
  i, j: integer;
begin
  with StringGrid do
  begin
    for i := ARow to RowCount - 2 do
      for j := 0 to ColCount - 1 do
        Cells[j, i] := Cells[j, i + 1];
    RowCount := RowCount - 1;
  end;
end;

procedure TfrPesquisar.IgnorarVe1Click(Sender: TObject);
var linha: string ;
    termo: string ;
    antigosValores: string ;
    inicio, fim: integer ;
begin
  // Recupera a linha e o termo selecionados
  linha := gridPesquisa.Cells[0, gridPesquisa.Row] ;
  termo := gridPesquisa.Cells[1, gridPesquisa.Row] ;
  inicio := termo.LastIndexOf('(') ;
  fim := termo.LastIndexOf('->') ;
  termo := termo.Substring(inicio+1, fim-inicio-1) ;
  if(termo.Trim.Length = 0) then exit ;

  // Adiciona o par na lista de linhas ignoradas
  if(linhasIgnorarGlossario = nil) then linhasIgnorarGlossario := TStringList.Create ;
  antigosValores := linhasIgnorarGlossario.Values[linha] ;
  if (length(antigosValores) > 0) and (not antigosValores.Contains(termo)) then begin
    termo := antigosValores + ';' + termo ;
    linhasIgnorarGlossario.Delete(linhasIgnorarGlossario.IndexOfName(linha));
  end;
  linhasIgnorarGlossario.AddPair(linha, termo) ;
  // Remove a linha da grid
  DeleteRow(gridPesquisa, gridPesquisa.Row);
  // Salva o arquivo
  linhasIgnorarGlossario.Sort;
  linhasIgnorarGlossario.SaveToFile(nomeArquivoIgnorarGlossario);
end;

end.
