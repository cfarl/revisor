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
  object Splitter1: TSplitter
    Left = 0
    Top = 209
    Width = 966
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 185
    ExplicitWidth = 372
  end
  object gridPesquisa: TStringGrid
    Left = 0
    Top = 212
    Width = 966
    Height = 345
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
  end
  object pnPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 209
    Align = alTop
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 964
      Height = 178
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Pesquisar'
        DesignSize = (
          956
          150)
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
        end
        object edFraseTraduzida: TEdit
          Left = 95
          Top = 55
          Width = 848
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object btPesquisarIngles: TBitBtn
          Left = 10
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
        end
        object btPesquisarTraduzido: TBitBtn
          Left = 202
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
        DesignSize = (
          956
          150)
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
        end
        object edTextoSubstituir: TEdit
          Left = 94
          Top = 56
          Width = 843
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
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
      object TabSheet3: TTabSheet
        Caption = 'Pesquisar Por Tamanho Frase'
        ImageIndex = 2
        OnShow = TabSheet3Show
        DesignSize = (
          956
          150)
        object Label5: TLabel
          Left = 10
          Top = 20
          Width = 78
          Height = 13
          Caption = 'Tamanho Frase:'
        end
        object Label9: TLabel
          Left = 10
          Top = 104
          Width = 83
          Height = 13
          Caption = 'Tamanhos ingl'#234's:'
        end
        object Label10: TLabel
          Left = 10
          Top = 125
          Width = 99
          Height = 13
          Caption = 'Tamanhos tradu'#231#227'o:'
        end
        object lbTamanhosIngles: TLabel
          AlignWithMargins = True
          Left = 99
          Top = 106
          Width = 4
          Height = 13
          Caption = '-'
        end
        object lbTamanhosTraduzido: TLabel
          AlignWithMargins = True
          Left = 115
          Top = 125
          Width = 4
          Height = 13
          Caption = '-'
        end
        object edTamanhoFrase: TEdit
          Left = 94
          Top = 17
          Width = 79
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object btPesquisarLinhasInglesTamanhoMaiorTamanhoFrase: TBitBtn
          Left = 10
          Top = 64
          Width = 377
          Height = 25
          Hint = 'Pesquisar frases com diferentes n'#250'meros de frases'
          Caption = 'Pesquisar linhas ingl'#234's com frases maiores que tamanho da frase'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btPesquisarLinhasInglesTamanhoMaiorTamanhoFraseClick
        end
        object btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFrase: TBitBtn
          Left = 393
          Top = 64
          Width = 377
          Height = 25
          Hint = 'Pesquisar frases com diferentes n'#250'meros de frases'
          Caption = 
            'Pesquisar linhas traduzidas com frases maiores que tamanho da fr' +
            'ase'
          Kind = bkAll
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btPesquisarLinhasTraduzidasTamanhoMaiorTamanhoFraseClick
        end
        object ckIgnorarLinhasComentario: TCheckBox
          Left = 192
          Top = 19
          Width = 241
          Height = 17
          Caption = 'Ignorar linhas iniciadas com --'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Pesquisar por Gloss'#225'rio'
        ImageIndex = 3
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 956
          Height = 49
          Align = alTop
          TabOrder = 0
          DesignSize = (
            956
            49)
          object Label8: TLabel
            Left = 2
            Top = 12
            Width = 47
            Height = 13
            Caption = 'Gloss'#225'rio:'
          end
          object Label11: TLabel
            Left = 8
            Top = 33
            Width = 567
            Height = 13
            Caption = 
              'Um arquivo de gloss'#225'rio cont'#233'm pares ingles=traduzido, onde trad' +
              'uzido pode conter v'#225'rias tradu'#231#245'es separadas por ;'
          end
          object edArquivoGlossario: TEdit
            Left = 55
            Top = 9
            Width = 705
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
          object Button1: TButton
            Left = 766
            Top = 7
            Width = 98
            Height = 25
            Hint = 'Um arquivo de gloss'#225'rio cont'#233'm pa'
            Caption = 'Carregar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = Button1Click
          end
          object btLimparEdGlossrio: TButton
            Left = 870
            Top = 7
            Width = 75
            Height = 25
            Caption = 'Limpar'
            TabOrder = 2
            OnClick = btLimparEdGlossrioClick
          end
        end
        object pnBotoesConsultaGlossario: TPanel
          Left = 760
          Top = 49
          Width = 196
          Height = 101
          Align = alRight
          TabOrder = 1
          DesignSize = (
            196
            101)
          object btPesquisarSelecionado: TBitBtn
            Left = 6
            Top = 6
            Width = 179
            Height = 25
            Hint = 'Pesquisar frases que cont'#233'm o termo do gloss'#225'rio'
            Anchors = [akTop, akRight]
            Caption = 'Pesquisar Selecionado'
            Kind = bkAll
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btPesquisarSelecionadoClick
          end
          object btPesquisarViolacaoGlossario: TBitBtn
            Left = 6
            Top = 67
            Width = 179
            Height = 25
            Hint = 'Pesquisar frases que cont'#233'm uma viola'#231#227'o do gloss'#225'rio'
            Anchors = [akTop, akRight]
            Caption = 'Pesquisar Viola'#231#227'o Gloss'#225'rio'
            Kind = bkAll
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btPesquisarViolacaoGlossarioClick
          end
          object btPesquisarViolacaoSelecionado: TBitBtn
            Left = 6
            Top = 35
            Width = 179
            Height = 25
            Hint = 'Pesquisar frases em ingl'#234's'
            Anchors = [akTop, akRight]
            Caption = 'Pesquisar Viola'#231#227'o Selecionado'
            Kind = bkAll
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btPesquisarViolacaoSelecionadoClick
          end
        end
        object gridGlossario: TStringGrid
          AlignWithMargins = True
          Left = 3
          Top = 52
          Width = 754
          Height = 95
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Options = [goRowSelect]
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 179
      Width = 964
      Height = 29
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        964
        29)
      object lbInfo: TLabel
        Left = 12
        Top = 7
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 654
        Top = 11
        Width = 59
        Height = 13
        Caption = 'Linha Inicial:'
      end
      object Label7: TLabel
        Left = 808
        Top = 11
        Width = 54
        Height = 13
        Caption = 'Linha Final:'
      end
      object edLinhaInicial: TEdit
        Left = 717
        Top = 3
        Width = 79
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnExit = edLinhaInicialExit
      end
      object edLinhaFinal: TEdit
        Left = 868
        Top = 3
        Width = 79
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        OnExit = edLinhaFinalExit
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 768
    Top = 40
  end
end
