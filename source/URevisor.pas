unit URevisor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.StrUtils, System.Types, Vcl.ComCtrls, Vcl.Buttons, System.IOUtils, System.Generics.Collections, Vcl.Themes,
  Vcl.Styles, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Web.HTTPApp  ;

type
  ThreadRevisor = class(TThread)
  private
       LStringGrid, tmpStringGrid : TStringGrid;
       LStringsLinhas,
       LStringsIngles,
       LStringsEspanhol,
       LStringsTraduzido : TStringList;
  procedure Sincroniza; virtual;
  protected
    procedure Execute; override;
  public
    constructor FillStringGrid(StringGrid : TStringGrid; StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList; const CreateSuspended : boolean = False);

end;

type
  TfrRevisor = class(TForm)
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    pnIngles: TPanel;
    Label1: TLabel;
    pnEspanhol: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    MemoIngles: TRichEdit;
    MemoEspanhol: TRichEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    pnMemos: TPanel;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Label9: TLabel;
    edIngles: TEdit;
    btEscolherArquivoIngles: TButton;
    Label10: TLabel;
    edTraduzido: TEdit;
    btEscolherArquivoTraduzido: TButton;
    Label11: TLabel;
    edEspanhol: TEdit;
    btEscolherArquivoEspanhol: TButton;
    btCarregar: TButton;
    btSair: TButton;
    Label13: TLabel;
    Label14: TLabel;
    lbLin: TLabel;
    lbCol: TLabel;
    Label15: TLabel;
    lbSel: TLabel;
    Panel7: TPanel;
    Label16: TLabel;
    rdVertical: TRadioButton;
    rdHorizontal: TRadioButton;
    GroupBox2: TGroupBox;
    btFechar: TButton;
    btPegarPrimeiraTraducao: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    pnRepetido: TPanel;
    btUsarPrimeiraTraducaoTodos: TBitBtn;
    btUsarComoPrimeiraTraducao: TBitBtn;
    MemoTraduzido: TRichEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    pnTraduzido: TPanel;
    Label6: TLabel;
    lbMaxFraseTraduzida: TLabel;
    pnAbrirArquivosInglesTraduzidoEspanhol: TPanel;
    pnBotoesCarregar: TPanel;
    pnAbrirPastasInglesTraduzidoEspanhol: TPanel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    rdCargaArquivos: TRadioButton;
    rdCargaPastas: TRadioButton;
    Label17: TLabel;
    edPastaIngles: TEdit;
    btEscolherPastaIngles: TButton;
    Label18: TLabel;
    edPastaTraduzido: TEdit;
    btEscolherPastaTraduzido: TButton;
    Label19: TLabel;
    edPastaEspanhol: TEdit;
    btEscolherPastaEspanhol: TButton;
    lbCarregados: TLabel;
    lbArquivo: TLabel;
    btJuntarPrimeiraTraducao: TBitBtn;
    lbDescNumFrasesTraducao: TLabel;
    lbNumFrasesTraducao: TLabel;
    Label21: TLabel;
    lbNumFrasesIngles: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    rdAnsi: TRadioButton;
    rdUTF8: TRadioButton;
    BitBtn1: TBitBtn;
    pnTipoCarga: TPanel;
    BitBtn2: TBitBtn;
    pnProxArquivo: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    btArquivoAnt: TBitBtn;
    btProxArquivo: TBitBtn;
    BitBtn3: TBitBtn;
    Label25: TLabel;
    lbTotalArquivos: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    btPesquisar: TBitBtn;
    btSetarLinha: TButton;
    lbTotalLinhas: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    edLinha: TEdit;
    Label27: TLabel;
    lbMaxFraseIngles: TLabel;
    Label28: TLabel;
    lbNumFrasesEspanhol: TLabel;
    Label30: TLabel;
    lbMaxFraseEspanhol: TLabel;
    Label29: TLabel;
    lbSelIngles: TLabel;
    Label31: TLabel;
    lbSelEspanhol: TLabel;
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure MemoInglesChange(Sender: TObject);
    procedure MemoEspanholChange(Sender: TObject);
    procedure MemoTraduzidoChange(Sender: TObject);
    //Function Explode(Texto, Separador : String) : TStrings;
    //procedure salvarGrid ;
    procedure MemoTraduzidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure btEscolherArquivoInglesClick(Sender: TObject);
    procedure btEscolherArquivoTraduzidoClick(Sender: TObject);
    procedure btEscolherArquivoEspanholClick(Sender: TObject);
    procedure btCarregarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure MemoTraduzidoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoTraduzidoSelectionChange(Sender: TObject);
    procedure rdVerticalClick(Sender: TObject);
    procedure rdHorizontalClick(Sender: TObject);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure btPegarPrimeiraTraducaoClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure btUsarPrimeiraTraducaoTodosClick(Sender: TObject);
    procedure btUsarComoPrimeiraTraducaoClick(Sender: TObject);
    procedure rdCargaArquivosClick(Sender: TObject);
    procedure rdCargaPastasClick(Sender: TObject);
    procedure btEscolherPastaInglesClick(Sender: TObject);
    procedure btEscolherPastaTraduzidoClick(Sender: TObject);
    procedure btEscolherPastaEspanholClick(Sender: TObject);
    procedure btJuntarPrimeiraTraducaoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MemoTraduzidoKeyPress(Sender: TObject; var Key: Char);
    procedure btProxArquivoClick(Sender: TObject);
    procedure btArquivoAntClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MemoInglesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisarClick(Sender: TObject);
    procedure salvarTodosArquivos ;
    procedure btSetarLinhaClick(Sender: TObject);
    procedure MemoInglesSelectionChange(Sender: TObject);
    procedure MemoEspanholSelectionChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function pegarPrimeiraTraducao(textoBuscar: string) : string ;
    procedure carregarArquivosInglesTraduzido;
    procedure carregarPastasInglesTraduzido;
    procedure preencherGrid(StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList) ;
    procedure carregarArquivosPasta(pasta: string ; StringsLinhas, textoTodosArquivos: TStringList; arquivoTraduzido: boolean) ;
    procedure salvarArquivo(nomeArquivo: string) ;
    procedure salvarArquivoAtual ;
    function getArquivosCarregados: TStringList ;
  public
    function Split(const Texto, Delimitador: string): TStringDynArray;
    procedure mantemLinhaSelecionadaMeioGrid ;
    function getTamanhoMaiorFrase(textoMemo: String) : integer ;
    { Public declarations }
  end;

var
  frRevisor: TfrRevisor;
  linhaAnterior: integer ;
  StringsNomeArquivoTraduzido: TStringList ;
  encodingArquivos: TEncoding ;
  estilo: string;
  mudouTexto: boolean;
  function removeQuebrasLinha(texto: string) : string ;
  //nomeArquivo: string ;

  //nomeArquivoIngles, nomeArquivoTraduzido, nomeArquivoEspanhol: string ;

implementation

{$R *.dfm}

uses Usobre, Unit1, UPesquisar ;

function TfrRevisor.Split(const Texto, Delimitador: string): TStringDynArray;
var
  i: integer;
  Len: integer;
  PosStart: integer;
  PosDel: integer;
  TempText:string;
begin
  i := 0;
  SetLength(Result, 1);
  Len := Length(Delimitador);
  PosStart := 1;
  PosDel := Pos(Delimitador, Texto);
  TempText:=  Texto;
  while PosDel > 0 do
    begin
      Result[i] := Copy(TempText, PosStart, PosDel - PosStart);
      PosStart := PosDel + Len;
      TempText:=Copy(TempText, PosStart, Length(TempText));
      PosDel := Pos(Delimitador, TempText);
      PosStart := 1;
      inc(i);
      SetLength(Result, i + 1);
    end;
  Result[i] := Copy(TempText, PosStart, Length(TempText));
end;

//---------------------------------------------------------------------------------------
// Dado o texto com várias frases, separadas por /n, retorna o tamanho da maior frase
//---------------------------------------------------------------------------------------
function TfrRevisor.getTamanhoMaiorFrase(textoMemo: String) : integer ;
var  frases: TStringDynArray;
     frase : string ;
     maxCaracteresFrase, i : integer ;
begin
   // Quebra o texto informado em frases
   textoMemo := textoMemo.TrimRight ;
   textoMemo := textoMemo.Replace('\r', '') ;
   textoMemo := textoMemo.Replace('(REPETIDO)', '') ;
   frases := Split(textoMemo, '\n');

   // Conta o tamanho da maior frase
   maxCaracteresFrase := 0 ;
   for i := 0 to length(frases)-1 do begin
     frase := frases[i] ;
     if frase.Length > maxCaracteresFrase then
        maxCaracteresFrase := frase.Length ;
   end;

   getTamanhoMaiorFrase:= maxCaracteresFrase;
End;

//------------------------------------------------------
// Mantém a linha selecionada no meio da grid
//------------------------------------------------------
procedure TfrRevisor.mantemLinhaSelecionadaMeioGrid ;
var numeroLinhasAcimaAbaixoLinhaMeio: integer ;
Begin
   numeroLinhasAcimaAbaixoLinhaMeio := StringGrid1.VisibleRowCount div 2 ;
   if((StringGrid1.Row > numeroLinhasAcimaAbaixoLinhaMeio) and (StringGrid1.Row+numeroLinhasAcimaAbaixoLinhaMeio < StringGrid1.RowCount)) then
      StringGrid1.TopRow := StringGrid1.Row - numeroLinhasAcimaAbaixoLinhaMeio ;
End;


//------------------------------------------------------
// Salva o conteudo da grid no arquivo informado
//------------------------------------------------------
procedure TfrRevisor.salvarArquivo(nomeArquivo: string);
var textoArquivo: TStringList ;
    textoTraduzido: string ;
    i, linhaGrid: integer ;
Begin
    // Se foi selecionada a opcao de carga 'arquivos', salva todas as linhas da
    // grid no arquivo informado
    if((rdCargaArquivos.Checked) and (nomeArquivo <> '')) then
    Begin
      textoArquivo := TStringList.Create;

      // Ps. Não pega a linha 0 da grid, porque ela é o título das colunas da grid
      // Ps2. A tradução está na terceira coluna (coluna 2) da grid
      for i := 1 to StringGrid1.RowCount -1 do
      Begin
        textoTraduzido := StringGrid1.Cells[2, i] ;
        textoArquivo.Add(textoTraduzido) ;
      End;

      // Salva o arquivo, depois sai desse método
      textoArquivo.SaveToFile(nomeArquivo, encodingArquivos);
      exit ;
    End;

    // Se foi selecionada a opcao de carga 'pasta', salva as linhas da grid
    // que pertencem ao arquivo informado
    if((rdCargaPastas.Checked) and (nomeArquivo <> '') and (nomeArquivo <> '-')) then
    Begin
        // Carrega as linhas do arquivo informado
        textoArquivo := TStringList.Create;
        textoArquivo.LoadFromFile(nomeArquivo, encodingArquivos);

        // Encontra a linha onde começa o texto do arquivo
        linhaGrid := 0;
        while (StringsNomeArquivoTraduzido[linhaGrid] <> ExtractFileName(nomeArquivo)) do
          linhaGrid := linhaGrid + 1 ;

        // Substitui as linhas do arquivo pelas linhas da grid
        linhaGrid := linhaGrid + 1;
        for i := 0 to textoArquivo.Count - 1 do Begin
            if(linhaGrid < StringGrid1.RowCount) then begin
              textoArquivo[i] := StringGrid1.Cells[2, linhaGrid];
              linhaGrid := linhaGrid + 1 ;
            end;
        End;

        // Salva o arquivo
        textoArquivo.SaveToFile(nomeArquivo, encodingArquivos);
        textoArquivo.Free ;
    End;
End;

//------------------------------------------------------
// Salva o arquivo que está sendo trabalhado
//------------------------------------------------------
procedure TfrRevisor.salvarArquivoAtual ;
Begin
  if (rdCargaArquivos.Checked) then
     salvarArquivo(edTraduzido.Text)
  else if (rdCargaPastas.Checked) then
     salvarArquivo(edPastaTraduzido.Text + StringsNomeArquivoTraduzido[StringGrid1.Row-1]) ;
End;

//------------------------------------------------------------------------------
// Recupera o nome dos arquivos carregados na grid, a partir da string que
// guarda a associacao de linhas da grid com os arquivos
//------------------------------------------------------------------------------
function TfrRevisor.getArquivosCarregados: TStringList ;
var nomeArquivos: TStringList ;
    i: integer ;
Begin
  nomeArquivos := TStringList.Create;
  for i:= 0 to StringsNomeArquivoTraduzido.Count-1 do
  Begin
    if(nomeArquivos.IndexOf(StringsNomeArquivoTraduzido[i]) < 0) then
      nomeArquivos.Add((StringsNomeArquivoTraduzido[i])) ;
  End;
  getArquivosCarregados := nomeArquivos ;
End;

//------------------------------------------------------
// Salva todos os arquivos carregados na grid
//------------------------------------------------------
procedure TfrRevisor.salvarTodosArquivos ;
var nomeArquivos: TStringList ;
    i: integer ;
Begin
  // Recupera o nome dos arquivos, a partir da string que guarda a associacao de
  // linhas da grid com os arquivos
  nomeArquivos := getArquivosCarregados;

  // Salva cada arquivo da lista
  for i:= 0 to nomeArquivos.Count-1 do
  Begin
    salvarArquivo(edPastaTraduzido.Text + nomeArquivos[i]);
  End;

  nomeArquivos.Free ;
End;


//----------------------------------------------------------------
// Método chamado quando uma nova linha é selecionada na grid
//----------------------------------------------------------------
procedure TfrRevisor.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
 var  textoIngles, textoEspanhol, textoTraduzido: string ;
      novaLinha : string ;
      i: integer ;
      posicao : TPoint ;
begin
  // Mostra a linha atual da grid
  if(Arow > 0) and (StringsNomeArquivoTraduzido.Count >0) then begin
      lbTotalLinhas.Caption := Integer.ToString(StringGrid1.RowCount-1) ;
      edLinha.Text := Integer.ToString(ARow) ;
      lbArquivo.Caption :=  StringsNomeArquivoTraduzido[ARow-1] ;
  end;

   // Se mudou de linha, atualiza a grid com o conteudo da traducao
  if( (linhaAnterior <> 0) and (linhaAnterior <> ARow) ) then
  Begin
    // Recupera o texto traduzido
    textoTraduzido := '' ;
    for i := 0 to memoTraduzido.Lines.Count-1 do
    Begin
      textoTraduzido := textoTraduzido + memoTraduzido.Lines[i] ;
    End;

    // Substitui o texto traduzido na grid
    StringGrid1.Cells[2,linhaAnterior] := textoTraduzido ;
  End;

   // Atualiza os campos do memo
 textoIngles := StringGrid1.Cells[1,Arow] ;
 textoTraduzido := StringGrid1.Cells[2,Arow] ;
 textoEspanhol := StringGrid1.Cells[3,Arow] ;

  memoIngles.Lines.Clear() ;
  memoIngles.Lines.Add(textoIngles) ;

  memoEspanhol.Lines.Clear() ;
  memoEspanhol.Lines.Add(textoEspanhol) ;

  // Recupera posicao do cursor
  posicao := MemoTraduzido.CaretPos ;
  MemoTraduzido.Lines.Clear() ;
  MemoTraduzido.Lines.Add(textoTraduzido) ;

  // Se o caractere está em uma posicao alem do texto, move ele para a posicao zero
  if( (posicao.X > textoTraduzido.Length) or ((MemoTraduzido.Lines.Count-1) < posicao.Y)) then begin
      MemoTraduzido.CaretPos:= Point(0, 0) ;
  end else begin
    MemoTraduzido.CaretPos := posicao ;
  end;

  linhaAnterior := ARow ;

  // Salva o conteudo da grid no arquivo original
  if(mudouTexto) then begin
     salvarArquivoAtual;
     mudouTexto := false ;
  end;
end;


//------------------------------------------------------------------------------
// Quando for pressionado ctrt + >> ou ctrl + << move para outra linha da grid
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoTraduzidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var  keystate: TKeyboardState;
begin
    // Se foi pressionado ctrt + >> no memo da traducao, avanca para prox. linha
    if (Key = VK_RIGHT) and (Shift = [ssCtrl]) then
    Begin
        // Avanca para a proxima linha da grid
        if(StringGrid1.Row < StringGrid1.RowCount-1) then
          StringGrid1.Row :=  StringGrid1.Row + 1;

        // Mantém a linha selecionada no meio da grid
        mantemLinhaSelecionadaMeioGrid;

        // Cancela a tecla pressionada e redesenha a grid
        Key := ord(#0);
        StringGrid1.Repaint ;
    End;

    // Se foi pressionado ctrt + << no memo da traducao, avanca para linha ante.
    if (Key = VK_LEFT) and (Shift = [ssCtrl]) then
    Begin
        // Avanca para a linha anterior da grid
        if(StringGrid1.Row > 1) then
          StringGrid1.Row :=  StringGrid1.Row -1;

        // Mantém a linha selecionada no meio da grid
        mantemLinhaSelecionadaMeioGrid ;

        // Cancela a tecla pressionada e redesenha a grid
        Key := ord(#0);
        StringGrid1.Repaint ;
    End;

    // Se foi pressionado ctrt + G, procura tradução no google
    if (Key = Ord('G')) and (Shift = [ssCtrl]) then
    Begin
        if(MemoTraduzido.SelLength > 0) then
        Begin
           Form1.edTextoTraduzir.Text := MemoTraduzido.SelText.Trim ;
           Form1.WindowState := wsNormal ;
           Form1.Show;
           Form1.PageControl1Change(self);
        End;

        // Cancela a tecla pressionada
        Key := ord(#0);
    End;
end;

procedure TfrRevisor.MemoTraduzidoKeyPress(Sender: TObject; var Key: Char);
begin
   mudouTexto := true ;
end;

//------------------------------------------------------------------------------
// Quando pressionar uma tecla no memo da traducao, atualiza exibicao da posicao
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoTraduzidoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lbLin.Caption := Integer.ToString(memoTraduzido.CaretPos.Y+1) ;
  lbCol.Caption := Integer.ToString(memoTraduzido.CaretPos.X+1) ;
end;

//------------------------------------------------------------------------------
// Quando for selecionado texto no memo da traducao, mostra o tamanho da selecao
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoTraduzidoSelectionChange(Sender: TObject);
begin
   lbSel.Caption := Integer.ToString(memoTraduzido.SelLength) ;
end;

//------------------------------------------------------------------------------
// Ajusta os memos para exibicao um ao lado do outro
//------------------------------------------------------------------------------
procedure TfrRevisor.rdVerticalClick(Sender: TObject);
begin
   // Define alinhamentos
   Splitter1.Align := TAlign.alLeft ;
   pnTraduzido.Align := TAlign.alLeft ;
   Splitter2.Align := TAlign.alLeft ;
   pnIngles.Align := TAlign.alLeft ;
   pnEspanhol.Align := TAlign.alLeft ;


   if edEspanhol.Text <> '' then
   begin
     pnEspanhol.visible := true ;
     Splitter1.Visible := true ;
     pnEspanhol.Align := TAlign.alClient ;

     // Calcula tamanho dos paineis
     pnIngles.Width := (frRevisor.Width-40) div 3 ;
     pnEspanhol.Width := (frRevisor.Width-40) div 3 ;
     pnTraduzido.Width := (frRevisor.Width-40) div 3 ;
   end
   else
   Begin
     pnEspanhol.visible := false ;
     Splitter1.Visible := false ;
     pnTraduzido.Align := TAlign.alClient ;

     // Calcula tamanho dos paineis
     pnIngles.Width := (frRevisor.Width-40) div 2 ;
     pnTraduzido.Width := (frRevisor.Width-40) div 2 ;
   End;
end;


//------------------------------------------------------------------------------
// Ajusta os memos para exibicao um em cima do outro
//------------------------------------------------------------------------------
procedure TfrRevisor.rdCargaArquivosClick(Sender: TObject);
begin
  pnAbrirArquivosInglesTraduzidoEspanhol.Visible := true ;
  pnAbrirPastasInglesTraduzidoEspanhol.Visible := false ;
end;

procedure TfrRevisor.rdCargaPastasClick(Sender: TObject);
begin
  pnAbrirArquivosInglesTraduzidoEspanhol.Visible := false ;
  pnAbrirPastasInglesTraduzidoEspanhol.Visible := true ;
end;

procedure TfrRevisor.rdHorizontalClick(Sender: TObject);
begin
   // Define alinhamentos
   pnIngles.Align := TAlign.alTop ;
   Splitter2.Align := TAlign.alTop ;
   pnTraduzido.Align := TAlign.alTop ;
   Splitter1.Align := TAlign.alTop ;
   pnEspanhol.Align := TAlign.alTop ;

   if edEspanhol.Text <> '' then
   begin
     pnEspanhol.visible := true ;
     Splitter1.Visible := true ;
     pnEspanhol.Align := TAlign.alClient ;

     // Calcula tamanho dos paineis
     pnIngles.Height := (pnMemos.Height-10) div 3 ;
     pnEspanhol.Height := (pnMemos.Height-10) div 3 ;
     pnTraduzido.Height := (pnMemos.Height-10) div 3 ;
   end
   else
   Begin
     pnEspanhol.visible := false ;
     Splitter1.Visible := false ;
     pnTraduzido.Align := TAlign.alClient ;

     // Calcula tamanho dos paineis
     pnIngles.Height := (pnMemos.Height-10) div 2 ;
     pnTraduzido.Height := (pnMemos.Height-10) div 2 ;
   End;
end;

//------------------------------------------------------------------------------
// Destaca o texto no richedit
//------------------------------------------------------------------------------
procedure Destacar(editor: TRichEdit; texto: string);
var
   SelStartBak: integer;
   SelLengthBak: integer;
   SelStartAux: integer;
begin
   SelStartBak := editor.SelStart;
   SelLengthBak := editor.SelLength;
   editor.SelectAll;
   editor.SelAttributes.Size := 12;   //Reset font size
   editor.SelAttributes.Style := [];  //Reset font style

   if(estilo = 'Windows') then
      editor.SelAttributes.Color := clBlack
   else
      editor.SelAttributes.Color := clMoneyGreen;

   SelStartAux := editor.FindText(texto, 1, Length(editor.Text), [stMatchCase]);
   while SelStartAux > -1 do
       begin
       editor.SelStart := SelStartAux;
       editor.SelLength := texto.Length; // numero de caracteres da palavra
       editor.SelAttributes.Color := clRed;
       editor.SelAttributes.Size := 18; //Change the fone size.
       editor.SelAttributes.Style := [fsBold]; //Change the font style.
       Inc(SelStartAux, texto.Length); // posicionar no inicio da palavra
       SelStartAux := editor.FindText(texto, SelStartAux, Length(editor.Text) - SelStartAux + 1, [stMatchCase]);
       end;
   editor.SelStart := SelStartBak;
   editor.SelLength := SelLengthBak;
end;


//------------------------------------------------------------------------------
// Quando o texto do memo ingles muda, destaca \n
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoInglesChange(Sender: TObject);
var textoIngles, textoTraduzido, primeiraTraducao: string ;
     frases: TStringDynArray;
     maxCaracteresFrase: integer;
begin
   Destacar(memoIngles, '\r\n');
   Destacar(memoIngles, '\n');

   // Quebra o texto em ingles em frases
   textoIngles := MemoIngles.Text ;
   textoIngles := textoIngles.TrimRight ;
   frases := Split(textoIngles, '\n');

   // Conta o tamanho da maior frase
   maxCaracteresFrase := getTamanhoMaiorFrase(MemoIngles.Text);

  lbNumFrasesIngles.Caption := Integer.ToString(length(frases));
  lbMaxFraseIngles.Caption := Integer.ToString(maxCaracteresFrase);
  pnRepetido.Visible := MemoIngles.Lines.Text.StartsWith('(REPETIDO)') ;
end;



procedure TfrRevisor.MemoInglesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    // Se foi pressionado ctrt + G, procura tradução no google
    if (Key = Ord('G')) and (Shift = [ssCtrl]) then
    Begin
        if(MemoIngles.SelLength > 0) then
        Begin
           Form1.edTextoTraduzir.Text := MemoIngles.SelText.Trim ;
           Form1.WindowState := wsNormal ;
           Form1.Show;
           Form1.PageControl1Change(self);
        End;

        // Cancela a tecla pressionada
        Key := ord(#0);
    End;
end;

procedure TfrRevisor.MemoInglesSelectionChange(Sender: TObject);
begin
   lbSelIngles.Caption := Integer.ToString(MemoIngles.SelLength) ;
end;

//------------------------------------------------------------------------------
// Quando o texto do memo traduzido muda, destaca \n
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoTraduzidoChange(Sender: TObject);
var  textoTraduzido, frase, primeiraTraducao : string ;
     maxCaracteresFrase, i : integer ;
begin
   Destacar(memoTraduzido, '\r\n');
   Destacar(memoTraduzido, '\n');

   // Quebra o texto traduzido em frases
   textoTraduzido := MemoTraduzido.Text ;
   textoTraduzido := textoTraduzido.TrimRight ;

   // Conta o tamanho da maior frase
   maxCaracteresFrase := getTamanhoMaiorFrase(MemoTraduzido.Text);

  // Atualiza o numero de frases e o maximo de caracteres por frase da traducao
  lbNumFrasesTraducao.Caption := Integer.ToString(length(Split(textoTraduzido, '\n')));
  lbMaxFraseTraduzida.Caption := Integer.ToString(maxCaracteresFrase);
  if(lbNumFrasesTraducao.Caption <> lbNumFrasesIngles.Caption) then
  Begin
    lbDescNumFrasesTraducao.Font.Color := clRed ;
    lbNumFrasesTraducao.Font.Color := clRed ;
  End else begin
    lbDescNumFrasesTraducao.Font.Color := clBlack ;
    lbNumFrasesTraducao.Font.Color := clBlack ;
  end;


   // Fundo verde
   MemoTraduzido.Color := $00D2FFD2 ;

  // Se o repetido está diferente do primeiro, mostra funco em vermelho
  if(pnRepetido.Visible and (textoTraduzido.Length > 0)) then
   Begin
      textoTraduzido := removeQuebrasLinha(textoTraduzido) ;
      primeiraTraducao := pegarPrimeiraTraducao(MemoIngles.Text) ;
      primeiraTraducao := removeQuebrasLinha(primeiraTraducao);
      if(textoTraduzido <> primeiraTraducao) then
         MemoTraduzido.Color := $00D2D2FF ;
   End;


end;

//------------------------------------------------------------------------------
// Quando o texto do memo espanhol muda, destaca \n
//------------------------------------------------------------------------------
procedure TfrRevisor.MemoEspanholChange(Sender: TObject);
var textoEspanhol, textoTraduzido, primeiraTraducao: string ;
     frases: TStringDynArray;
     maxCaracteresFrase: integer;
begin
   Destacar(memoEspanhol, '\r\n');
   Destacar(memoEspanhol, '\n');

   // Quebra o texto em ingles em frases
   textoEspanhol := MemoEspanhol.Text ;
   textoEspanhol := textoEspanhol.TrimRight ;
   frases := Split(textoEspanhol, '\n');

   // Conta o tamanho da maior frase
   maxCaracteresFrase := getTamanhoMaiorFrase(MemoEspanhol.Text);

  lbNumFrasesEspanhol.Caption := Integer.ToString(length(frases));
  lbMaxFraseEspanhol.Caption := Integer.ToString(maxCaracteresFrase);
end;

procedure TfrRevisor.MemoEspanholSelectionChange(Sender: TObject);
begin
   lbSelEspanhol.Caption := Integer.ToString(MemoEspanhol.SelLength) ;
end;

//------------------------------------------------------------------------------
// Ajusta o tamanho dos memos quando a janela é redimensionada
//------------------------------------------------------------------------------
procedure TfrRevisor.FormCreate(Sender: TObject);
begin
 estilo := 'Windows' ;
end;

procedure TfrRevisor.FormResize(Sender: TObject);
var numColunas : integer ;
begin
  // Ajusta a largura da grid para exibicao de 3 ou 4 colunas
  numColunas := 3 ;
  if (edEspanhol.Text <> '') then numColunas := 4 ;

  // Ajusta a largura da primeira coluna
  StringGrid1.DefaultColWidth := (frRevisor.Width-10) div (numColunas-1);
  StringGrid1.ColWidths[0] := 50 ;

  // Ajusta a largura dos memos na exibicao vertical ou horizontal
  if rdHorizontal.Checked then
     rdHorizontalClick(Sender)
  else
     rdVerticalClick(Sender) ;
  MemoTraduzido.SetFocus;

  // Ajusta a altura do painel, visto que somente uma opção de carga estará ativa
  Panel3.Height := 180 ;

end;

procedure TfrRevisor.FormShow(Sender: TObject);
var arquivoEstado : TStringList ;
    arquivoIngles, arquivoTraduzido, arquivoEspanhol: string ;
    pastaIngles, pastaTraduzido, pastaEspanhol: string ;
    cargaArquivo, formatoAnsi, disposicaoVertical: boolean;
    linhaSelecionada: integer ;
begin
   // Carrega o estado do revisor
   if(FileExists('estado_revisor.txt')) then Begin
     arquivoEstado := TStringList.Create;
     arquivoEstado.LoadFromFile('estado_revisor.txt');

     // Carrega valores do arquivo
     if(arquivoEstado.IndexOfName('arquivoIngles') >= 0) then arquivoIngles := arquivoEstado.Values['arquivoIngles'] ;
     if(arquivoEstado.IndexOfName('arquivoTraduzido') >= 0) then arquivoTraduzido := arquivoEstado.Values['arquivoTraduzido'] ;
     if(arquivoEstado.IndexOfName('arquivoEspanhol') >= 0) then arquivoEspanhol := arquivoEstado.Values['arquivoEspanhol'] ;
     if(arquivoEstado.IndexOfName('pastaIngles') >= 0) then pastaIngles := arquivoEstado.Values['pastaIngles'] ;
     if(arquivoEstado.IndexOfName('pastaTraduzido') >= 0) then pastaTraduzido := arquivoEstado.Values['pastaTraduzido'] ;
     if(arquivoEstado.IndexOfName('pastaEspanhol') >= 0) then pastaEspanhol := arquivoEstado.Values['pastaEspanhol'] ;
     if(arquivoEstado.IndexOfName('cargaArquivo') >= 0) then cargaArquivo := Boolean.Parse(arquivoEstado.Values['cargaArquivo']) ;
     if(arquivoEstado.IndexOfName('formatoAnsi') >= 0) then formatoAnsi := Boolean.Parse(arquivoEstado.Values['formatoAnsi']) ;
     if(arquivoEstado.IndexOfName('disposicaoVertical') >= 0) then disposicaoVertical := Boolean.Parse(arquivoEstado.Values['disposicaoVertical']) ;
     if(arquivoEstado.IndexOfName('linhaSelecionada') >= 0) then linhaSelecionada := Integer.Parse(arquivoEstado.Values['linhaSelecionada']) ;
   End;

   // Carrega componentes
   edIngles.Text := arquivoIngles ;
   edTraduzido.Text := arquivoTraduzido ;
   edEspanhol.Text := arquivoEspanhol ;

   edPastaIngles.Text := pastaIngles ;
   edPastaTraduzido.Text := pastaTraduzido ;
   edPastaEspanhol.Text := pastaEspanhol ;

   if(cargaArquivo) then rdCargaArquivos.Checked := true else rdCargaPastas.Checked := true ;
   if(formatoAnsi) then rdAnsi.Checked := true else rdUTF8.Checked := true ;
   if(disposicaoVertical) then rdVertical.Checked := true else rdHorizontal.Checked := true ;

   if((edTraduzido.Text <> '') or  (edPastaTraduzido.Text <> '')) then
   Begin
      btCarregarClick(Sender) ;
      edLinha.Text := Integer.ToString(linhaSelecionada) ;
      btSetarLinhaClick(Sender) ;
      mantemLinhaSelecionadaMeioGrid;
   End;
end;

//------------------------------------------------------------------------------
// Abre dialogo para escolher o arquivo com texto em ingles
//------------------------------------------------------------------------------
procedure TfrRevisor.btEscolherArquivoInglesClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edIngles.Text := OpenDialog1.FileName ;
  End;
end;

//------------------------------------------------------------------------------
// Abre dialogo para escolher o arquivo com texto traduzido
//------------------------------------------------------------------------------
procedure TfrRevisor.btEscolherArquivoTraduzidoClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edTraduzido.Text := OpenDialog1.FileName ;
  End;
end;

procedure TfrRevisor.btEscolherPastaEspanholClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edPastaEspanhol.Text := ExtractFilePath(OpenDialog1.FileName) ;
  End;
end;

procedure TfrRevisor.btEscolherPastaInglesClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edPastaIngles.Text := ExtractFilePath(OpenDialog1.FileName) ;
  End;
end;

procedure TfrRevisor.btEscolherPastaTraduzidoClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edPastaTraduzido.Text := ExtractFilePath(OpenDialog1.FileName) ;
  End;
end;

//------------------------------------------------------------------------------
// Pega a primeira traducao do texto informado
//------------------------------------------------------------------------------
function TfrRevisor.pegarPrimeiraTraducao(textoBuscar: string) : string ;
var traducao: string ;
    achou: boolean ;
    i: integer ;
Begin
  textoBuscar := StringReplace(textoBuscar, '(REPETIDO)', '', []).TrimRight ;
  textoBuscar := removeQuebrasLinha(textoBuscar);

  // Procura texto em ingles. Se achou, recupera traducao
  traducao := '' ;
  achou := false ;
  for I := 1 to StringGrid1.RowCount -1 do
  Begin
     if (removeQuebrasLinha(StringGrid1.Cells[1, i]) = textoBuscar) then
     Begin
        traducao := StringGrid1.Cells[2, i] ;
        achou := true ;
        break ;
     End;
  End;

  pegarPrimeiraTraducao := traducao ;
End;


//------------------------------------------------------------------------------
// Abre dialogo para escolher o arquivo com texto em espanhol
//------------------------------------------------------------------------------
procedure TfrRevisor.btPegarPrimeiraTraducaoClick(Sender: TObject);
var textoBuscar, traducao: string ;
    achou: boolean ;
    I: Integer;
begin
  // Recupera texto em ingles da celula selecionada
  textoBuscar := MemoIngles.Text ;
  traducao := pegarPrimeiraTraducao(textoBuscar) ;

  // Se achou, substitui a traducao
  if(traducao.Trim.Length > 0) then
  Begin
    MemoTraduzido.Lines.Clear() ;
    MemoTraduzido.Lines.Add(traducao) ;

    // Atualiza a celula na grid
    StringGrid1.Cells[2, StringGrid1.Row] := traducao ;
  End;

  // Salva o arquivo alterado
  salvarArquivoAtual;

  // Atualiza a grid
  stringgrid1.Repaint ;
  MemoTraduzido.SetFocus;
end;

procedure TfrRevisor.btPesquisarClick(Sender: TObject);
begin
  frPesquisar.WindowState := wsNormal ;
  frPesquisar.visible := true ;
  frPesquisar.show;
end;

procedure TfrRevisor.btProxArquivoClick(Sender: TObject);
var linhaAtual: integer ;
    arquivoAtual: string ;
    achou: boolean ;
begin
   linhaAtual := StringGrid1.Row - 1 ;
   arquivoAtual := StringsNomeArquivoTraduzido[linhaAtual] ;

   // Procura linha onde comeca o proximo arquivo
   achou := false ;
   while ((not achou) and (linhaAtual <  StringsNomeArquivoTraduzido.Count)) do
   Begin
      if (arquivoAtual <> StringsNomeArquivoTraduzido[linhaAtual]) then
        achou := true
      else
        linhaAtual := linhaAtual + 1;
   End;

   // Se achou, coloca arquivo na linha onde começa
   if achou then begin
     StringGrid1.Row := linhaAtual + 1;

     // Mantém a linha selecionada no meio da grid
     mantemLinhaSelecionadaMeioGrid;

     StringGrid1.Repaint ;
   end;
end;

//------------------------------------------------------------------------------
// Abre dialogo para escolher o arquivo com texto em espanhol
//------------------------------------------------------------------------------
procedure TfrRevisor.btUsarPrimeiraTraducaoTodosClick(Sender: TObject);
var textoBuscar, traducao: string ;
    achou: boolean ;
    I: Integer;
begin
  // Recupera texto em ingles da celula selecionada
  textoBuscar := MemoIngles.Text ;
  textoBuscar := textoBuscar.TrimRight ;
  traducao := pegarPrimeiraTraducao(textoBuscar) ;

  // Aplica a primeira traducao em todas as celulas repetidas
  for I := 1 to StringGrid1.RowCount -1 do
  Begin
     if (removeQuebrasLinha(StringGrid1.Cells[1, i]) = removeQuebrasLinha(textoBuscar)) then
     Begin
        StringGrid1.Cells[2, i] := traducao ;
     End;
  End;

  // Se achou, substitui a traducao
  if(traducao.Trim.Length > 0) then
  Begin
    MemoTraduzido.Lines.Clear() ;
    MemoTraduzido.Lines.Add(traducao) ;
  End;

  // Atualiza a celula na grid
  StringGrid1.Cells[2, StringGrid1.Row] := traducao ;

  // Salva todos os arquivos carregados
  salvarTodosArquivos ;

  // Atualiza a grid
  stringgrid1.Repaint ;
  MemoTraduzido.SetFocus;
end;

//------------------------------------------------------------------------------
// Usa a traducao repetida como primeira traducao
//------------------------------------------------------------------------------
procedure TfrRevisor.btUsarComoPrimeiraTraducaoClick(Sender: TObject);
var textoIngles, traducao: string ;
    i: integer ;
Begin
  // Recupera texto em ingles da linha selecionada
  textoIngles := MemoIngles.Text ;
  textoIngles := StringReplace(textoIngles, '(REPETIDO)', '', []).TrimRight ;

  // Recupera traducao da linha selecionada
  traducao := MemoTraduzido.Text ;
  traducao := traducao.TrimRight ;

  // Procura texto em ingles. Se achou, aturaliza
  for I := 1 to StringGrid1.RowCount -1 do
  Begin
     if (removeQuebrasLinha(StringGrid1.Cells[1, i]) = removeQuebrasLinha(textoIngles)) then
     Begin
        StringGrid1.Cells[2, i] := traducao ;
        break ;
     End;
  End;

  // Atualiza a celula na grid
  StringGrid1.Cells[2, StringGrid1.Row] := traducao ;

  // Salva todos os arquivos carregados
  salvarTodosArquivos ;

  // Atualiza a grid
  stringgrid1.Repaint ;
  MemoTraduzido.SetFocus;
End;


//------------------------------------------------------------------------------
// Abre dialogo para escolher o arquivo com texto em espanhol
//------------------------------------------------------------------------------
procedure TfrRevisor.btEscolherArquivoEspanholClick(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  Begin
     edEspanhol.Text := OpenDialog1.FileName ;
  End;
end;

//------------------------------------------------------------------------------
// Fecha os arquivos selecionados, limpando a grid
//------------------------------------------------------------------------------
procedure TfrRevisor.btFecharClick(Sender: TObject);
var c, r: Integer;
begin
    // Inicializa componentes
    edIngles.Text := '' ;
    edTraduzido.Text := '' ;
    edEspanhol.Text := '' ;
    edPastaIngles.Text := '' ;
    edPastaTraduzido.Text := '' ;
    edPastaEspanhol.Text := '' ;

    // Limpa a grid
    for c := 0 to Pred(StringGrid1.ColCount) do
      for r := 0 to Pred(StringGrid1.RowCount) do
        StringGrid1.Cells[c, r] := '';
    StringGrid1.RowCount := 2;

   // limpa memos
   MemoIngles.Text := '' ;
   MemoTraduzido.Text := '' ;
   MemoEspanhol.Text := '' ;

end;


procedure TfrRevisor.btJuntarPrimeiraTraducaoClick(Sender: TObject);
var textoBuscar, traducao, atual: string ;
    achou: boolean ;
begin
  // Recupera texto em ingles da celula selecionada
  textoBuscar := MemoIngles.Text ;
  traducao := pegarPrimeiraTraducao(textoBuscar) ;

  // Se achou, substitui a traducao
  if(traducao.Trim.Length > 0) then
  Begin
    // Atualiza memo traduzido
    atual := MemoTraduzido.Text ;
    MemoTraduzido.Lines.Clear() ;
    MemoTraduzido.Lines.Add(traducao) ;
    MemoTraduzido.Lines.Add('-------------------') ;
    MemoTraduzido.Lines.Add(atual) ;

    // Atualiza a celula na grid
    StringGrid1.Cells[2, StringGrid1.Row] := traducao ;
  End;


  // Atualiza a grid
  stringgrid1.Repaint ;
  MemoTraduzido.SetFocus;
end;

//------------------------------------------------------------------------------
// Fecha a janela e sai do programa
//------------------------------------------------------------------------------
procedure TfrRevisor.btSairClick(Sender: TObject);
var arquivoEstado: tstringlist ;
begin
   // Salva o estado do revisor
   arquivoEstado := TStringList.Create;
   arquivoEstado.AddPair('arquivoIngles', edIngles.Text) ;
   arquivoEstado.AddPair('arquivoTraduzido', edTraduzido.Text) ;
   arquivoEstado.AddPair('arquivoEspanhol', edEspanhol.Text) ;
   arquivoEstado.AddPair('pastaIngles', edPastaIngles.Text) ;
   arquivoEstado.AddPair('pastaTraduzido', edPastaTraduzido.Text) ;
   arquivoEstado.AddPair('pastaEspanhol', edPastaEspanhol.Text) ;
   arquivoEstado.AddPair('pastaEspanhol', edPastaEspanhol.Text) ;
   arquivoEstado.AddPair('cargaArquivo', Boolean.ToString(rdCargaArquivos.Checked, TUseBoolStrs.true)) ;
   arquivoEstado.AddPair('formatoAnsi', Boolean.ToString(rdAnsi.Checked, TUseBoolStrs.true)) ;
   arquivoEstado.AddPair('disposicaoVertical', Boolean.ToString(rdVertical.Checked, TUseBoolStrs.true)) ;
   arquivoEstado.AddPair('linhaSelecionada', edLinha.Text) ;
   arquivoEstado.SaveToFile('estado_revisor.txt');

   // Fecha o revisor
   btFecharClick(Sender);
   frRevisor.Close;
end;

procedure TfrRevisor.btSetarLinhaClick(Sender: TObject);
var linha: integer ;
begin
  linha := Integer.Parse(edLinha.Text) ;
  if(linha < 0) then Begin
    edLinha.Text := '0' ;
    StringGrid1.Row :=  1;
  End

  else if(linha >= StringGrid1.RowCount) then Begin
    edLinha.Text := Integer.ToString(StringGrid1.RowCount-1) ;
    StringGrid1.Row := StringGrid1.RowCount-1 ;
  End

  else Begin
    StringGrid1.Row := linha ;
  End;

end;

//------------------------------------------------------
// Seleciona uma linha da grid
//------------------------------------------------------
procedure TfrRevisor.StringGrid1Click(Sender: TObject);
begin
StringGrid1.Repaint;
end;

procedure TfrRevisor.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  grid: TStringGrid;
  S: String;
  drawrect: TRect;
  bgFill: TColor;
  traducao, textoIngles : string ;
begin
  grid := Sender as TStringGrid;

  if (Arow =  0) then
    bgFill := clBtnFace

  // Pinta dessa cor se a celula está na mesma linha da selecionada
  else if (gdSelected in State) or (Arow = Grid.Row) then
     bgFill := $FFF0D0

  // Pinta de vermelho os textos repetidos que estão diferentes da primeira traducao, de verde os que estão iguais
  else if(grid.Cells[1, ARow].StartsWith('(REPETIDO)') ) then
  Begin
     textoIngles := grid.Cells[1, ARow] ;
     traducao := pegarPrimeiraTraducao(textoIngles) ;
     if(traducao <> grid.Cells[2, ARow]) then
         bgFill := $00BBBBFF
     else
         bgFill := $00D2FFD2 ;
  End

  // Pinta dessa cor se ingles = traducao
  else if(grid.Cells[1, ARow] = grid.Cells[2, ARow]) then
   bgFill := $00D9FFFE

  // Se está no cenário escuro, pinta de preto
  else //if (estilo = 'Windows') then
      bgFill := clWhite ;

  grid.Canvas.Brush.Color := bgFill;
  grid.canvas.Brush.Style := bsSolid;
  grid.canvas.fillrect(Rect);

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


//------------------------------------------------------------------------------
// Quando uma tecla é pressionada na grid, desenha ela de novo
//------------------------------------------------------------------------------
procedure TfrRevisor.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   StringGrid1.Repaint;
end;


function GetCellHeight(AGrid: TStringGrid; ACol, ARow: Integer): Integer;
var
  r: Integer;
  L: TStringList;
  h: Integer;
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  bmp.Canvas.Font.Assign(AGrid.Font);

  L := TStringList.Create;
  try
    L.Text := AGrid.Cells[ACol, ARow];
    if L.Count > 0 then
      Result := bmp.Canvas.TextHeight('Tg') * L.Count
    else
      Result := AGrid.DefaultRowHeight;
  finally
    L.Free;
    bmp.Free;
  end;
end;

procedure AutoRowHeight(grid: TStringGrid; ARow: Integer);
var
  h, hmax : Integer;
  col: Integer;
begin
  hmax := 0;
  for col := 0 to grid.ColCount-1 do
  Begin
    h := GetCellHeight(grid, col, ARow);
    if h > hmax then hmax := h;
  end;
  grid.RowHeights[ARow] := h;
end;


//-------------------------------------------------------------------------------
// Opção 1: carrega arquivos com textos em ingles, traduzido e espanhol
//-------------------------------------------------------------------------------
procedure TfrRevisor.carregarArquivosInglesTraduzido;
var  StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList ;
     i: integer ;
     numeroColunasGrid :  integer;
begin
   // Verifica se os arquivos necessarios foram informados
   if (edTraduzido.Text = '') or (edIngles.Text = '') then
   Begin
     ShowMessage('O arquivo em inglês e o arquivo traduzido precisam ser informados.');
     exit ;
   End;

   // Inicializa variaveis
   numeroColunasGrid := 3 ;
   pnEspanhol.Visible := false ;
   Splitter1.Visible := false ;
   StringsLinhas := TStringList.Create;
   StringsIngles := TStringList.Create;
   StringsTraduzido := TStringList.Create;
   StringsEspanhol := TStringList.Create;
   try
     StringsNomeArquivoTraduzido.Free ;
   finally
     StringsNomeArquivoTraduzido := TStringList.Create;
   end;

   // Se foi informado o arquivo em espanhol, seta o ambiente para 4 colunas
   if(edEspanhol.Text <> '') then
   Begin
      numeroColunasGrid := 4 ;
      pnEspanhol.Visible := true ;
      Splitter1.Visible := true ;
   End ;

   // Define numero de colunas na grid
   StringGrid1.ColCount := numeroColunasGrid ;

   try
      // Carrega arquivos
      StringsIngles.LoadFromFile(edIngles.Text, encodingArquivos);
      StringsTraduzido.LoadFromFile(edTraduzido.Text, encodingArquivos);
      if (numeroColunasGrid = 4) then StringsEspanhol.LoadFromFile(edEspanhol.Text, encodingArquivos);

      // Guarda o nome do arquivo para cada linha do arquivo ingles
      for I := 0 to StringsIngles.Count-1 do begin
         StringsLinhas.Add(Integer.ToString(i+1));
         StringsNomeArquivoTraduzido.Add(ExtractFileName(edTraduzido.Text)) ;
      end;

      // Carrega as linhas na grid
//      preencherGrid(StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido);
      ThreadRevisor.FillStringGrid(StringGrid1,StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido);

   finally
{
      StringsLinhas.Free ;
      StringsIngles.Free;
      StringsTraduzido.Free;
      StringsEspanhol.Free;
      StringGrid1.Refresh;
}
      linhaAnterior := 0 ;
   end;

 End;

//-------------------------------------------------------------------------------
// Carrega em 'textoTodosArquivos' o texto de todos os arquivos da pasta
//-------------------------------------------------------------------------------
procedure TfrRevisor.carregarArquivosPasta(pasta: string ; StringsLinhas, textoTodosArquivos: TStringList; arquivoTraduzido: boolean) ;
var
  textoArquivo: TStringList ;
  i, j: integer ;
  FileList: TStringDynArray;
  arquivo : string ;
  numArquivosCarregados: integer ;
Begin
 // Recupera os arquivos da pasta, depois ordena pelo nome
 FileList := TDirectory.GetFiles(pasta, '*.*', TSearchOption.soAllDirectories);
 TArray.Sort<String>(FileList);

 // Analisa cada arquivo
 numArquivosCarregados :=  0;
 for j :=  0 to length(FileList)-1 do Begin
   arquivo := FileList[j] ;
   if length(arquivo) < 3 then break ;

   // Recupera as linhas do arquivo
   textoArquivo := TStringList.Create;
   textoArquivo.LoadFromFile(arquivo, encodingArquivos);

   // Adiciona na lista contendo o texto de todos os arquivo
   textoTodosArquivos.AddStrings(textoArquivo);
   numArquivosCarregados := numArquivosCarregados + 1;

   // Guarda o nome do arquivo para cada linha do arquivo ingles
   if(arquivoTraduzido) then begin
       for I := 0 to textoArquivo.Count-1 do begin
          StringsLinhas.Add(Integer.ToString(i+1));
          StringsNomeArquivoTraduzido.Add(ExtractFileName(arquivo)) ;
       end;
   end;

   // Finaliza processamento
   if (numArquivosCarregados > 1) then pnProxArquivo.Visible := true ;

   textoArquivo.Free ;
 End;

End;

//-------------------------------------------------------------------------------
// Opção 2: carregar pastas com arquivos em ingles, traduzido e espanhol
//-------------------------------------------------------------------------------
procedure TfrRevisor.carregarPastasInglesTraduzido;
var  StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList ;
     i: integer ;
     numeroColunasGrid :  integer;
     pasta : string ;
begin
   // Verifica se os arquivos necessarios foram informados
   if (edPastaTraduzido.Text = '') or (edPastaIngles.Text = '') then
   Begin
     ShowMessage('As pastas contendo os arquivos em inglês e os arquivos traduzidos precisam ser informadas.');
     exit ;
   End;

   // Inicializa variaveis
   lbArquivo.Caption := '-';
   numeroColunasGrid := 3 ;
   pnEspanhol.Visible := false ;
   Splitter1.Visible := false ;
   StringsLinhas := TStringList.Create;
   StringsIngles := TStringList.Create;
   StringsTraduzido := TStringList.Create;
   StringsEspanhol := TStringList.Create;
  try
     StringsNomeArquivoTraduzido.Free ;
   finally
     StringsNomeArquivoTraduzido := TStringList.Create;
   end;

   // Se foi informado a pasta em espanhol, seta o ambiente para 4 colunas
   if(edPastaEspanhol.Text <> '') then
   Begin
      numeroColunasGrid := 4 ;
      pnEspanhol.Visible := true ;
      Splitter1.Visible := true ;
   End ;

   // Define numero de colunas na grid
   StringGrid1.ColCount := numeroColunasGrid ;

   try
      // Carrega arquivos das pastas
      carregarArquivosPasta(edPastaIngles.Text, StringsLinhas, StringsIngles, false) ;
      carregarArquivosPasta(edPastaTraduzido.Text, StringsLinhas, StringsTraduzido, true) ;
      if (numeroColunasGrid = 4) then carregarArquivosPasta(edPastaEspanhol.Text, StringsLinhas, StringsEspanhol, false) ;

      // Salva arquivos com os textos e tendo o nome das pastas .txt
      pasta := edPastaIngles.Text ;
      edIngles.Text :=  pasta.Substring(0, pasta.Length-1) + '.txt' ;
      StringsIngles.SaveToFile(edIngles.Text, encodingArquivos);

      pasta := edPastaTraduzido.Text ;
      edTraduzido.Text :=  pasta.Substring(0, pasta.Length-1) + '.txt' ;
      StringsTraduzido.SaveToFile(edTraduzido.Text, encodingArquivos);

      if (numeroColunasGrid = 4) then
      Begin
        pasta := edPastaEspanhol.Text ;
        edEspanhol.Text :=  pasta.Substring(0, pasta.Length-1) + '.txt' ;
        StringsEspanhol.SaveToFile(edEspanhol.Text, encodingArquivos);
      End;

      // Carrega as linhas na grid
      preencherGrid(StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido);

   finally
      StringsLinhas.Free ;
      StringsIngles.Free;
      StringsTraduzido.Free;
      StringsEspanhol.Free;
      StringGrid1.Refresh;
      linhaAnterior := 0 ;
   end;

 End;

 function removeQuebrasLinha(texto: string) : string ;
 var temp: string ;
 Begin
   // Troca \n por espaco, remove \r
   texto := texto.Replace('\n', ' ').Replace('\r','').Replace('\t','') ;

   // Remove duplos espacos
   temp := texto ;
   while (temp <> texto) do
   Begin
     temp := texto ;
     texto := texto.Replace('  ', ' ') ;
   End;

   removeQuebrasLinha := texto ;
 End;

 //-------------------------------------------------------------------------------
// Preenche a grid com os textos em ingles, traduzido e espanhol
//-------------------------------------------------------------------------------
procedure TfrRevisor.preencherGrid(StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList) ;
var listaTextosIngles: tstringlist ;
    row, col: integer ;
Begin
    // Inicializa lista com textos em ingles, para marcar os textos repetidos
    listaTextosIngles := TStringList.Create;

    // Inicializa a grid
    StringGrid1.RowCount := StringsIngles.Count + 1;
    StringGrid1.FixedRows := 1;
    StringGrid1.Cells[0, 0] := 'Linha' ;
    StringGrid1.Cells[1, 0] := 'Inglês' ;
    StringGrid1.Cells[2, 0] := 'Traduzido' ;
    StringGrid1.Cells[3, 0] := 'Espanhol' ;

    // Carrega as linhas dados dos arquivos na StringGrid
    for Row := 0 to StringsIngles.Count-1 do
    begin
        // Linha
        StringGrid1.Cells[0, Row+1] := StringsLinhas[Row] ;

        // Texto em ingles
        //showmessage(removeQuebrasLinha(StringsIngles[Row]));
        if( listaTextosIngles.IndexOf(removeQuebrasLinha(StringsIngles[Row])) = -1 ) then
        Begin
            StringGrid1.Cells[1, Row+1] := StringsIngles[Row];
            listaTextosIngles.Add(removeQuebrasLinha(StringsIngles[Row])) ;
        End else
        Begin
            StringGrid1.Cells[1, Row+1] := '(REPETIDO)' + StringsIngles[Row];
        End;

        // Texto traduzido
        if (Row < StringsTraduzido.Count) then
           StringGrid1.Cells[2, Row+1] := StringsTraduzido[Row]
        else
           StringGrid1.Cells[2, Row+1] := '';

        // Texto expanhol
         if (Row < StringsEspanhol.Count) then
           StringGrid1.Cells[3, Row+1] := StringsEspanhol[Row]
         else
           StringGrid1.Cells[3, Row+1] := '';
    end;

End;


//------------------------------------------------------------------------------
// Carrega os arquivos selecionados na grid
//------------------------------------------------------------------------------
procedure TfrRevisor.BitBtn1Click(Sender: TObject);
begin
  Panel3.Visible := not Panel3.Visible ;
end;

procedure TfrRevisor.BitBtn2Click(Sender: TObject);
begin
 if (estilo = 'Windows') then
    estilo := 'Carbon'
 else
    estilo := 'Windows' ;
 TStyleManager.TrySetStyle(estilo)  ;
end;

procedure TfrRevisor.BitBtn3Click(Sender: TObject);
begin
  frSobre.ShowModal;
end;

procedure TfrRevisor.btArquivoAntClick(Sender: TObject);
var linhaAtual: integer ;
    arquivoAtual: string ;
    achou: boolean ;
begin
   linhaAtual := StringGrid1.Row - 1 ;
   arquivoAtual := StringsNomeArquivoTraduzido[linhaAtual] ;

   // Procura linha onde comeca o proximo arquivo
   achou := false ;
   while ((not achou) and (linhaAtual > 0)) do
   Begin
      if (arquivoAtual <> StringsNomeArquivoTraduzido[linhaAtual]) then
        achou := true
      else
        linhaAtual := linhaAtual - 1;
   End;

   // Se achou, coloca arquivo na linha onde começa
   if achou then begin
     arquivoAtual := StringsNomeArquivoTraduzido[linhaAtual] ;
     while((linhaAtual >= 0) and (arquivoAtual = StringsNomeArquivoTraduzido[linhaAtual])) do
        linhaAtual := linhaAtual - 1;
     StringGrid1.Row := linhaAtual + 2;

     // Mantém a linha selecionada no meio da grid
     mantemLinhaSelecionadaMeioGrid  ;

     StringGrid1.Repaint ;
   end;
end;

procedure TfrRevisor.btCarregarClick(Sender: TObject);
var i: integer ;
    //StringsIngles, StringsEspanhol, StringsTraduzido: TStringList;
    linhaAtualGrid: integer ;
Begin

   mudouTexto := false ;
   pnProxArquivo.Visible := false ;

   // Seta o encodingo dos arquivos
   if (rdAnsi.Checked) then
       encodingArquivos := TEncoding.ANSI
   else if (rdUTF8.Checked) then
       encodingArquivos := TEncoding.UTF8 ;

   // Carrega arquivos
   if rdCargaArquivos.Checked then
      carregarArquivosInglesTraduzido ;
   if rdCargaPastas.Checked then
      carregarPastasInglesTraduzido ;

   FormResize(Sender);

  // Ajusta os memos
  rdVerticalClick(Sender) ;
  if rdHorizontal.Checked then
     rdHorizontalClick(Sender)
  else
     rdVerticalClick(Sender) ;

  panel3.AutoSize := true ;
  lbTotalArquivos.Caption := Integer.ToString(getArquivosCarregados.Count);


End;

procedure ThreadRevisor.Execute;
var listaTextosIngles: tstringlist ;
    row, linhaAtualGrid : integer ;
Begin

    linhaAtualGrid := Self.LStringGrid.Row ;

    // Inicializa lista com textos em ingles, para marcar os textos repetidos
    listaTextosIngles := TStringList.Create;

    // Inicializa a grid
    Self.LStringGrid.RowCount := LStringsIngles.Count + 1;
    Self.LStringGrid.FixedRows := 1;
    Self.LStringGrid.Cells[0, 0] := 'Linha' ;
    Self.LStringGrid.Cells[1, 0] := 'Inglês' ;
    Self.LStringGrid.Cells[2, 0] := 'Traduzido' ;
    Self.LStringGrid.Cells[3, 0] := 'Espanhol' ;

    // Carrega as linhas dados dos arquivos na StringGrid
    for Row := 0 to LStringsIngles.Count-1 do
    begin
        // Linha
        LStringGrid.Cells[0, Row+1] := LStringsLinhas[Row] ;
        AutoRowHeight(LStringGrid, Row+1);
        // Texto em ingles
        //showmessage(removeQuebrasLinha(StringsIngles[Row]));
        if( listaTextosIngles.IndexOf(removeQuebrasLinha(LStringsIngles[Row])) = -1 ) then
        Begin
            LStringGrid.Cells[1, Row+1] := LStringsIngles[Row];
            listaTextosIngles.Add(removeQuebrasLinha(LStringsIngles[Row])) ;
        End else
        Begin
            LStringGrid.Cells[1, Row+1] := '(REPETIDO)' + LStringsIngles[Row];
        End;

        // Texto traduzido
        if (Row < LStringsTraduzido.Count) then
           LStringGrid.Cells[2, Row+1] := LStringsTraduzido[Row]
        else
           LStringGrid.Cells[2, Row+1] := '';

        // Texto expanhol
         if (Row < LStringsEspanhol.Count) then
           LStringGrid.Cells[3, Row+1] := LStringsEspanhol[Row]
         else
           LStringGrid.Cells[3, Row+1] := '';
    end;
{
    // Seleciona a primeira linha do grid
    if Self.LStringGrid.RowCount > 1 then
      Self.LStringGrid.Row := 2;

    // Restaura linha corrente
    if(linhaAtualGrid < Self.LStringGrid.RowCount) then
       Self.LStringGrid.Row := linhaAtualGrid;
}
    Synchronize(Sincroniza);

end;
constructor ThreadRevisor.FillStringGrid(StringGrid : TStringGrid; StringsLinhas, StringsIngles, StringsEspanhol, StringsTraduzido: TStringList; const CreateSuspended : boolean = False);
begin
inherited Create(CreateSuspended);

  Self.FreeOnTerminate  := true;

  Self.tmpStringGrid := StringGrid;

  Self.LStringGrid := TStringGrid.Create(Self.tmpStringGrid);
  Self.LStringGrid.ColCount := Self.tmpStringGrid.ColCount;

  Self.LStringsLinhas := StringsLinhas;
  Self.LStringsIngles := (StringsIngles);
  Self.LStringsEspanhol :=(StringsEspanhol);
  Self.LStringsTraduzido := (StringsTraduzido);

end;

procedure ThreadRevisor.Sincroniza;
var i : byte;
begin
      //mas que merda ta acontecendo ?


      for i := 1 to Self.LStringGrid.ColCount -1 do
      begin
          Self.tmpStringGrid.ColCount := Self.LStringGrid.ColCount;
          Self.tmpStringGrid.RowCount := Self.LStringGrid.RowCount;
//          Self.tmpStringGrid.Cols[i].AddStrings(Self.LStringGrid.Cols[i]);
          Self.tmpStringGrid.Cols[i].Assign(Self.LStringGrid.Cols[i]);
      end;


      FreeAndNil(LStringsLinhas);
      FreeAndNil(LStringsIngles);
      FreeAndNil(LStringsTraduzido);
      FreeAndNil(LStringsEspanhol);

end;

end.
