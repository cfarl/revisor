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
    lbInfo: TLabel;
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
    btPesquisarLinhasTamanhoMaiorTamanhoFrase: TBitBtn;
    procedure gridPesquisaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btPesquisarTraduzidoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure gridPesquisaClick(Sender: TObject);
    procedure btPesquisarInglesClick(Sender: TObject);
    procedure btSubstituirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btPesquisarLinhasTamanhoMaiorTamanhoFraseClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisar(coluna: integer; texto: string);
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

function Split(const Texto, Delimitador: string): TStringDynArray;
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

    if(length(split(textoTraduzido, '\n')) <>  length(split(textoIngles, '\n'))) then begin
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

procedure TfrPesquisar.btPesquisarInglesClick(Sender: TObject);
begin
  pesquisar(1, edFraseIngles.Text) ;
end;

procedure TfrPesquisar.btPesquisarLinhasTamanhoMaiorTamanhoFraseClick(Sender: TObject);
var i, j, numEncontrados : integer ;
    gridRevisor: TStringGrid;
    textoTraduzido: string;
    linhaInicio, linhaFim: integer ;
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
    tamanhoFrase := frRevisor.getTamanhoMaiorFrase(gridRevisor.Cells[2,i]) ;

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

procedure TfrPesquisar.FormResize(Sender: TObject);
var numColunas : integer ;
begin
  // Ajusta a largura da grid para exibicao de 3 ou 4 colunas
  numColunas := gridPesquisa.ColCount ;

  // Ajusta a largura da primeira coluna
  gridPesquisa.DefaultColWidth := (frPesquisar.Width-10) div (numColunas-1);
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
