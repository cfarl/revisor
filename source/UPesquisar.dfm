object frPesquisar: TfrPesquisar
  Left = 0
  Top = 0
  Caption = 'Pesquisar/Substituir Frases'
  ClientHeight = 557
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object gridPesquisa: TStringGrid
    Left = 0
    Top = 185
    Width = 966
    Height = 372
    TabStop = False
    Align = alClient
    BevelInner = bvLowered
    ColCount = 3
    DefaultColWidth = 20
    DefaultRowHeight = 10
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goDrawFocusSelected, goRowSelect]
    ParentColor = True
    ScrollBars = ssVertical
    TabOrder = 0
    OnClick = gridPesquisaClick
    OnDrawCell = gridPesquisaDrawCell
    ExplicitTop = 169
    ExplicitHeight = 388
  end
  object pnPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 185
    Align = alTop
    TabOrder = 1
    object lbInfo: TLabel
      Left = 12
      Top = 164
      Width = 98
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 964
      Height = 160
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Pesquisar'
        ExplicitLeft = 0
        ExplicitTop = 32
        ExplicitWidth = 932
        ExplicitHeight = 165
        DesignSize = (
          956
          132)
        object Label3: TLabel
          Left = 10
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Frase Ingl'#234's:'
        end
        object Label1: TLabel
          Left = 10
          Top = 58
          Width = 81
          Height = 13
          Caption = 'Frase Traduzida:'
        end
        object edFraseIngles: TEdit
          Left = 79
          Top = 17
          Width = 864
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          ExplicitWidth = 840
        end
        object edFraseTraduzida: TEdit
          Left = 95
          Top = 55
          Width = 848
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          ExplicitWidth = 824
        end
        object btPesquisarIngles: TBitBtn
          Left = 39
          Top = 96
          Width = 173
          Height = 25
          Hint = 'Pesquisar frases em ingl'#234's'
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar Frase Ingl'#234's'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btPesquisarInglesClick
          ExplicitLeft = 15
        end
        object btPesquisarTraduzido: TBitBtn
          Left = 218
          Top = 96
          Width = 170
          Height = 25
          Hint = 'Pesquisar frrr'
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar Frase Traduzida'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btPesquisarTraduzidoClick
          ExplicitLeft = 194
        end
        object BitBtn1: TBitBtn
          Left = 394
          Top = 96
          Width = 258
          Height = 25
          Hint = 'Pesquisar frases com diferentes n'#250'meros de frases'
          Caption = 'Pesquisar linhas com diferente n'#250'mero de \n'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Substituir'
        ImageIndex = 1
        ExplicitLeft = 44
        ExplicitTop = 40
        ExplicitHeight = 143
        DesignSize = (
          956
          132)
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 82
          Height = 13
          Caption = 'Texto Traduzido:'
        end
        object Label4: TLabel
          Left = 8
          Top = 59
          Width = 60
          Height = 13
          Caption = 'Novo Texto:'
        end
        object edTextoOriginal: TEdit
          Left = 96
          Top = 21
          Width = 841
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          ExplicitWidth = 817
        end
        object edTextoSubstituir: TEdit
          Left = 94
          Top = 56
          Width = 843
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          ExplicitWidth = 819
        end
        object btSubstituir: TBitBtn
          Left = 194
          Top = 96
          Width = 97
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Substituir'
          Kind = bkRetry
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btSubstituirClick
        end
        object BitBtn2: TBitBtn
          Left = 8
          Top = 96
          Width = 170
          Height = 25
          Hint = 'Pesquisar frrr'
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar Frase Traduzida'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn2Click
        end
      end
    end
  end
end
