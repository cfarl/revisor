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
    Top = 153
    Width = 966
    Height = 404
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
    ExplicitTop = 81
    ExplicitWidth = 635
    ExplicitHeight = 218
  end
  object pnPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 153
    Align = alTop
    TabOrder = 1
    DesignSize = (
      966
      153)
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 81
      Height = 13
      Caption = 'Frase Traduzido:'
    end
    object Label2: TLabel
      Left = 16
      Top = 82
      Width = 82
      Height = 13
      Caption = 'Texto Traduzido:'
    end
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Frase Ingl'#234's:'
    end
    object Label4: TLabel
      Left = 16
      Top = 112
      Width = 80
      Height = 13
      Caption = 'Texto Substituir:'
    end
    object edFraseTraduzida: TEdit
      Left = 103
      Top = 46
      Width = 741
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 410
    end
    object edTextoOriginal: TEdit
      Left = 102
      Top = 79
      Width = 742
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object btPesquisarTraduzido: TBitBtn
      Left = 859
      Top = 44
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      Kind = bkAll
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btPesquisarTraduzidoClick
      ExplicitLeft = 528
    end
    object edFraseIngles: TEdit
      Left = 85
      Top = 14
      Width = 759
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      ExplicitWidth = 428
    end
    object btPesquisarIngles: TBitBtn
      Left = 859
      Top = 12
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      Kind = bkAll
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btPesquisarInglesClick
      ExplicitLeft = 528
    end
    object edTextoSubstituir: TEdit
      Left = 102
      Top = 109
      Width = 742
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
    end
    object btSubstituir: TBitBtn
      Left = 859
      Top = 105
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Substituir'
      Kind = bkRetry
      NumGlyphs = 2
      TabOrder = 6
      OnClick = btSubstituirClick
    end
  end
end
