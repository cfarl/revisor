unit UPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls, System.Types,
  Vcl.Buttons, Vcl.ComCtrls;

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
    Label6: TLabel;
    edLinhaInicial: TEdit;
    Label7: TLabel;
    edLinhaFinal: TEdit;
    btPesquisarLinhasInglesTamanhoMaiorTamanhoFrase: TBitBtn;
    TabSheet4: TTabSheet;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Label8: TLabel;
    edArquivoGlossario: TEdit;
    Button1: TButton;
    gridGlossario: TStringGrid;
    pnBotoesConsultaGlossario: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    lbTamanhosIngles: TLabel;
    lbTamanhosTraduzido: TLabel;
    btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFrase: TBitBtn;
    ckIgnorarLinhasComentario: TCheckBox;
    Panel2: TPanel;
    lbInfo: TLabel;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFraseClick(
      Sender: TObject);
  private
    { Private declarations }
    procedure pesquisar(coluna: integer; texto: string);
    procedure btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(colunaGrid: integer);
    //procedure inicializaComponentesParaPesquisa ;
  public
    { Public declarations }
  end;

var
  frPesquisar: TfrPesquisar;

implementation

{$R *.dfm}

uses URevisor;

//--------------------------------------------------------
// Pesquisa por um texto na coluna informada
//--------------------------------------------------------
procedure TfrPesquisar.pesquisar(coluna: integer; texto: string);
var i, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas correspondentes à pesquisa
  for i := 1 to gridRevisor.RowCount do begin
    if(gridRevisor.Cells[coluna,i].ToUpper.Contains(texto.ToUpper)) then begin
      numEncontrados := numEncontrados + 1;
      gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
      gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
      for j := 1 to gridRevisor.ColCount do begin
        gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  gridPesquisa.Repaint ;
end;

function SortDesc(List: TStringList; Index1, Index2: Integer): Integer;
begin
  // Negate the result so a descending sort is done.
  Result := Integer.Parse(List[Index2]) - Integer.Parse(List[Index1]);
end;

procedure TfrPesquisar.TabSheet3Show(Sender: TObject);
var i, tamanhoIngles, tamanhoTraduzido: integer ;
    listaIngles, listaTraduzido: TStringList ;
    gridRevisor: TStringGrid;
begin
 // Inicializa componentes
 gridRevisor := frRevisor.StringGrid1 ;
 lbTamanhosIngles.Caption := '' ;
 lbTamanhosTraduzido.Caption := '' ;
 listaIngles := TStringList.Create;
 listaIngles.Duplicates := dupIgnore ;
 //listaIngles.CustomSort(SortDesc);
 //listaIngles.Sorted := true ;

 listaTraduzido := TStringList.Create;
 listaTraduzido.Duplicates := dupIgnore ;
 //listaTraduzido.CustomSort(SortDesc);
 //listaTraduzido.Sorted := true ;

 // Constroi lista com os tamanhos maximos das frases em ingles e traduzido
 for i := 1 to gridRevisor.RowCount do begin
    if(ckIgnorarLinhasComentario.Checked and
      (gridRevisor.Cells[1,i].StartsWith('--') or gridRevisor.Cells[1,i].StartsWith('(REPETIDO)--'))) then continue ;

    tamanhoIngles := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[1,i]);
    if(listaIngles.IndexOf(Integer.ToString(tamanhoIngles)) < 0) then
      listaIngles.Add(Integer.ToString(tamanhoIngles)) ;
 end;

  for i := 1 to gridRevisor.RowCount do begin
    if(ckIgnorarLinhasComentario.Checked and
      (gridRevisor.Cells[2,i].StartsWith('--') or gridRevisor.Cells[2,i].StartsWith('(REPETIDO) --'))) then continue ;

    tamanhoTraduzido := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[2,i]);
    if(listaTraduzido.IndexOf(Integer.ToString(tamanhoTraduzido)) < 0) then
      listaTraduzido.Add(Integer.ToString(tamanhoTraduzido)) ;
 end;

 // Atualiza labels
// listaIngles.Sort;
// listaTraduzido.Sort;
 listaIngles.CustomSort(SortDesc);
 listaTraduzido.CustomSort(SortDesc);
 lbTamanhosIngles.Caption := listaIngles.CommaText ;
 lbTamanhosTraduzido.Caption := listaTraduzido.CommaText ;

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
  gridPesquisa.Repaint ;
end;

procedure TfrPesquisar.BitBtn2Click(Sender: TObject);
begin
pesquisar(2, edTextoOriginal.Text) ;
end;

procedure TfrPesquisar.BitBtn3Click(Sender: TObject);
begin
  if(gridGlossario.Row > 0) then
     pesquisar(1, gridGlossario.Cells[0, gridGlossario.Row]) ;
end;

procedure TfrPesquisar.BitBtn4Click(Sender: TObject);
var i, ig, pos, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    inglesGlossario, inglesRevisor: string ;
    traduzidoGlossario, traduzidoRevisor: string ;
    deveIncluir : boolean ;
begin
  // Inicializa grid de pesquisa
  gridRevisor := frRevisor.StringGrid1 ;
  gridPesquisa.RowCount := 0;
  gridPesquisa.ColCount := gridRevisor.ColCount ;
  numEncontrados := 0;

  // Coloca na grid as linhas que não estão de acordo com o glossario
  for i := 1 to gridRevisor.RowCount do begin
    inglesRevisor := gridRevisor.Cells[1, i].ToLower ;
    traduzidoRevisor := gridRevisor.Cells[2, i].ToLower ;

    for ig := 1 to gridGlossario.RowCount do begin
      // Recupera as palavras do glosssario
      inglesGlossario := gridGlossario.Cells[0, ig-1].ToLower.Trim ;
      traduzidoGlossario := gridGlossario.Cells[1, ig-1].ToLower.Trim ;

      // Se a linha de texto contem o texto em ingles, mas nao contem o texto traduzido, adiciona
      if(inglesRevisor.Contains(inglesGlossario) and (not traduzidoRevisor.Contains(traduzidoGlossario))) then begin
        deveIncluir := true ;

        // Verifica se existe antes da palavra buscada um caractere. Se existir e for diferente de espaco, ignora o texto
        pos := inglesRevisor.IndexOf(inglesGlossario) ;
        if (pos > 1) and (inglesRevisor[pos] <> ' ') then deveIncluir := false ;
        if ((pos + length(inglesGlossario)) < length(inglesRevisor)) and (inglesRevisor[pos + length(inglesGlossario)] <> ' ') then deveIncluir := false ;

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
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  gridPesquisa.Repaint ;
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
    if(ckIgnorarLinhasComentario.Checked and textoColuna.StartsWith('(REPETIDO)--')) then continue ;

    // Recupera o tamanho da maior frase
    tamanhoFrase := frRevisor.getTamanhoMaiorFrase(textoColuna) ;

    // Verifica se o criterio de pesquisa se aplica aqui
    if(tamanhoFrase > tamanhoMaximoFrase) then begin
      numEncontrados := numEncontrados + 1;
      gridPesquisa.RowCount:= gridPesquisa.RowCount + 1;
      gridPesquisa.Cells[0, gridPesquisa.RowCount-1] := Integer.ToString(i) ;
      for j := 1 to gridRevisor.ColCount do begin
        gridPesquisa.Cells[j, gridPesquisa.RowCount-1] := gridRevisor.Cells[j, i] ;
      end;
    end;
  end;

  lbInfo.Caption := 'Foram encontradas ' + Integer.ToString(numEncontrados) + ' linhas de texto.' ;
  gridPesquisa.Repaint ;
end;


procedure TfrPesquisar.btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFraseClick(
  Sender: TObject);
begin
  btPesquisarLinhasTamanhoMaiorTamanhoFrasePorTipo(2) ;
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
var txOriginal, txSubstituir : string ;
    gridRevisor: TStringGrid;
    i, numEncontrados: integer ;
begin
  // Inicializa substituicao
  txOriginal := edTextoOriginal.Text ;
  txSubstituir := edTextoSubstituir.Text ;
  gridRevisor := frRevisor.StringGrid1 ;
  numEncontrados := 0;

  // Susbstitui o texto na grid
  for i := 1 to gridRevisor.RowCount do begin
    if(gridRevisor.Cells[2,i].Contains(txOriginal)) then begin
      gridRevisor.Cells[2,i] := gridRevisor.Cells[2,i].Replace(txOriginal, txSubstituir) ;
      numEncontrados := numEncontrados + 1;
    end;
  end;

  lbInfo.Caption := 'Foram feitas ' + Integer.ToString(numEncontrados) + ' substituições.' ;
  gridPesquisa.Repaint ;
  frRevisor.salvarTodosArquivos;
end;

procedure TfrPesquisar.Button1Click(Sender: TObject);
var Values: TStringList ;
    i: integer ;
    termoGlossario: TStringDynArray;
    valores: string ;
begin
  if OpenDialog1.Execute then
  Begin
     edArquivoGlossario.Text := OpenDialog1.FileName ;

     // Inicializa grid de glossario
    Values := TStringList.Create;
    Values.LoadFromFile(OpenDialog1.FileName);
    gridGlossario.RowCount := 0;

     // Carrega glossario na grid
     for i := 0 to Values.Count - 1 do begin
        valores := Values[i] ;
        //if(valores <> '') then begin
          termoGlossario := frRevisor.Split(valores, '=');
          gridGlossario.RowCount:= i;
          gridGlossario.Cells[0, i] := termoGlossario[0] ;
          gridGlossario.Cells[1, i] := termoGlossario[1] ;
        //end;
     end;

     gridGlossario.Repaint;
  End;
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

end.
