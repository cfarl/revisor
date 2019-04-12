object frRevisor: TfrRevisor
  Left = 0
  Top = 0
  Caption = 'Tool para revis'#227'o de tradu'#231#245'es - By Brazilian Warriors, 2019'
  ClientHeight = 953
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter3: TSplitter
    Left = 0
    Top = 400
    Width = 1029
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    Color = clMoneyGreen
    ParentColor = False
    ExplicitTop = 354
    ExplicitWidth = 747
  end
  object pnMemos: TPanel
    Left = 0
    Top = 408
    Width = 1029
    Height = 545
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 980
    object Splitter1: TSplitter
      Left = 1
      Top = 393
      Width = 1027
      Height = 8
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      Color = clYellow
      ParentColor = False
      ExplicitLeft = -7
      ExplicitTop = 334
      ExplicitWidth = 794
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 121
      Width = 1027
      Height = 8
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      Color = clAqua
      ParentColor = False
      ExplicitLeft = -7
      ExplicitTop = 117
      ExplicitWidth = 794
    end
    object pnIngles: TPanel
      Left = 1
      Top = 1
      Width = 1027
      Height = 120
      Align = alTop
      Alignment = taLeftJustify
      TabOrder = 0
      ExplicitWidth = 978
      object MemoIngles: TRichEdit
        Left = 89
        Top = 1
        Width = 937
        Height = 118
        Align = alClient
        Color = 16777177
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        Zoom = 100
        OnChange = MemoInglesChange
        OnKeyDown = MemoInglesKeyDown
        ExplicitWidth = 888
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 88
        Height = 118
        Align = alLeft
        TabOrder = 1
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 38
          Height = 116
          Align = alLeft
          Caption = 'Ingl'#234's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object Label21: TLabel
          Left = 1
          Top = 17
          Width = 36
          Height = 13
          Caption = 'Frases:'
        end
        object lbNumFrasesIngles: TLabel
          Left = 41
          Top = 17
          Width = 6
          Height = 13
          Caption = '0'
        end
      end
    end
    object pnEspanhol: TPanel
      Left = 1
      Top = 401
      Width = 1027
      Height = 143
      Align = alClient
      Alignment = taLeftJustify
      TabOrder = 1
      ExplicitWidth = 978
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 88
        Height = 141
        Align = alLeft
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 53
          Height = 139
          Align = alLeft
          Caption = 'Espanhol:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
      end
      object MemoEspanhol: TRichEdit
        Left = 89
        Top = 1
        Width = 937
        Height = 141
        Align = alClient
        Color = 16777177
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        Zoom = 100
        OnChange = MemoEspanholChange
        ExplicitWidth = 888
      end
    end
    object pnTraduzido: TPanel
      Left = 1
      Top = 129
      Width = 1027
      Height = 264
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 978
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 88
        Height = 262
        Align = alLeft
        TabOrder = 0
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 59
          Height = 13
          Caption = 'Traduzido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 1
          Top = 46
          Width = 17
          Height = 13
          Caption = 'Lin:'
        end
        object Label14: TLabel
          Left = 1
          Top = 63
          Width = 19
          Height = 13
          Caption = 'Col:'
        end
        object lbLin: TLabel
          Left = 21
          Top = 46
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label15: TLabel
          Left = 1
          Top = 80
          Width = 18
          Height = 13
          Caption = 'Sel:'
        end
        object lbSel: TLabel
          Left = 22
          Top = 80
          Width = 6
          Height = 13
          Caption = '0'
        end
        object lbCol: TLabel
          Left = 24
          Top = 63
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label6: TLabel
          Left = 0
          Top = 31
          Width = 60
          Height = 13
          Caption = 'Maior Frase:'
        end
        object lbMaxFrase: TLabel
          Left = 62
          Top = 31
          Width = 6
          Height = 13
          Caption = '0'
        end
        object lbDescNumFrasesTraducao: TLabel
          Left = 1
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Frases:'
        end
        object lbNumFrasesTraducao: TLabel
          Left = 41
          Top = 16
          Width = 6
          Height = 13
          Caption = '0'
        end
      end
      object MemoTraduzido: TRichEdit
        Left = 186
        Top = 1
        Width = 840
        Height = 262
        Align = alClient
        Color = 13828050
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        Zoom = 100
        OnChange = MemoTraduzidoChange
        OnKeyDown = MemoTraduzidoKeyDown
        OnKeyPress = MemoTraduzidoKeyPress
        OnKeyUp = MemoTraduzidoKeyUp
        OnSelectionChange = MemoTraduzidoSelectionChange
        ExplicitWidth = 791
      end
      object pnRepetido: TPanel
        Left = 89
        Top = 1
        Width = 97
        Height = 262
        Align = alLeft
        TabOrder = 2
        Visible = False
        object btPegarPrimeiraTraducao: TBitBtn
          Left = 6
          Top = 62
          Width = 85
          Height = 56
          Hint = 'Aplica a primeira tradu'#231#227'o nessa linha.'
          Caption = 'Aplicar Primeira Tradu'#231#227'o'
          Default = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000D70D0000D70D00000001000000000000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
            D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
            E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
            E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
            F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
            F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AE5FCFFFFFF
            FFFFFFFCFAFEFFFFFFFF5C87E9FDFFFFFFFFFFE6B6C7FDFFFFFF8D9196D4F7FF
            FFFFFFE0988FC7FDFFFFC49BC2AFAAC2D5DCDDC29FB6A8C8FDFFEF90D5DBCBC2
            BEBEBEB3BCE5D6A6CAFDFFC8A9E1F5EDE4E1E0E0E8FAF8D5A3CEFFF7BCB2D4F1
            FDFFFFFFFFFFFFF4A49CFFFFF4C3B4C2D1DADFE1E9FAF8D6A1CCFFFFFFFCE0BB
            ABB0B6AFBAE6D7A4C9FEFFFFFFFFFFFFF7ECE4C5A2B7A5C8FEFFFFFFFFFFFFFF
            FFFFFFE0978AC7FEFFFFFFFFFFFFFFFFFFFFFFE5B3C8FEFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          TabOrder = 0
          WordWrap = True
          OnClick = btPegarPrimeiraTraducaoClick
        end
        object btUsarPrimeiraTraducaoTodos: TBitBtn
          Left = 5
          Top = 121
          Width = 86
          Height = 56
          Hint = 
            'Aplica a primeira tradu'#231#227'o em todas as linhas com tradu'#231#227'o repet' +
            'ida.'
          Caption = 'Aplicar Primeira em Todos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000D70D0000D70D00000001000000000000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
            D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
            E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
            E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
            F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
            F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BEAFDFFFFFF
            FDFAFCFCFAFEFFFFFFFF6595F0FEFFFFE5B6CBE7C3C7FDFFFFFF8787A5E6FCFF
            DE9F8BC2D5AAC6FDFFFFAFACB8A6B8CFBDA8ABAFBED1A8C7FDFFDE93DFD5C6C0
            B3C2DFD4AFC0D1A6C8FDF9A4C2F3F3E7E1EAF9F6D4ADC3D2A2CDFFE2AAC4E9FB
            FFFFFFFFEDB39CF0A49CFFFFDAB2BCCED9E9F9F6D5ADC0D4A0CCFFFFFFEBC3AC
            A3BEE0D5ADBED3A4C7FEFFFFFFFFFFF8D0ADACADBED4A5C6FEFFFFFFFFFFFFFF
            DF9D87C2D6A6C5FEFFFFFFFFFFFFFFFFE4B4CBE6BFC8FEFFFFFFFFFFFFFFFFFF
            FEFCFEFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          ModalResult = 12
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          TabOrder = 1
          WordWrap = True
          OnClick = btUsarPrimeiraTraducaoTodosClick
        end
        object btUsarComoPrimeiraTraducao: TBitBtn
          Left = 6
          Top = 181
          Width = 86
          Height = 56
          Hint = 'Coloca essa tradu'#231#227'o no lugar da primeira tradu'#231#227'o.'
          Caption = 'Usar como Primeira Tradu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C30E0000C30E00000001000000000000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
            D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
            E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
            E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
            F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
            F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFF0B96BFFFFFFFFFFFFFFFFFFFFFCD49322006FFFFFFFFFFFFFFFFFFFCB4E00
            00000038CEFFFFFFFFFFFFFFFFF68B000000000015C7FFFFFFFFFFFFFFFFFEB4
            00000000001CE0FFFFFFFFFFFFFFFFFFD03800B3600067FDFFFFFFFFD9FFFFFF
            FFE760F7FA9B00D2FFFFFFFF78F8FFFFFFFFFCFFFFFE9797FFFFFFFF9797FEFF
            FFFCFFFFFFFFF878FFFFFFFFD1009CFBF760E7FFFFFFFFD9FFFFFFFFFD670062
            B30038D0FFFFFFFFFFFFFFFFFFE2220000000000A8FDFFFFFFFFFFFFFFFFC715
            00000000008BF6FFFFFFFFFFFFFFFFCE38000000004ECBFFFFFFFFFFFFFFFFFF
            6E001C83CAFAFFFFFFFFFFFFFFFFFFFF6BB9F0FFFFFFFFFFFFFF}
          Layout = blGlyphTop
          ModalResult = 4
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          TabOrder = 2
          WordWrap = True
          OnClick = btUsarComoPrimeiraTraducaoClick
        end
        object btJuntarPrimeiraTraducao: TBitBtn
          Left = 6
          Top = 3
          Width = 85
          Height = 56
          Hint = 'Juntar Primeira Tradu'#231#227'o'
          Cancel = True
          Caption = 'Juntar Primeira Tradu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000D70D0000D70D00000001000000000000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
            D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
            E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
            E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
            F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
            F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7E94BFECFCFFFFFFFFFFFFFFFFFFFFFF4A3B5D87D0F6
            FFFFFFFFFCF2EAFFFFFFD8CA974E75C5F2FFFFFFFEE7AADAFEFFFFFAE5B45F72
            B5D5DCDCDCC87E86C7F9FFFFFFEFA9525C7E8787877E57276DC3FFFFFFEFA952
            5C7E8787877E552B6FC3FFFAE6B45F72B5D5DCDCDBC87E88CAFAD9CB994E74C5
            F2FFFFFFFEE7ACDBFFFF4C3B5D87CFF6FFFFFFFFFCF3ECFFFFFF7E94BFECFCFF
            FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          ModalResult = 7
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          TabOrder = 3
          WordWrap = True
          OnClick = btJuntarPrimeiraTraducaoClick
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1029
    Height = 400
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 980
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1027
      Height = 304
      Align = alTop
      Anchors = [akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 978
      object pnBotoesCarregar: TPanel
        Left = 1
        Top = 243
        Width = 1025
        Height = 60
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 976
        object btCarregar: TButton
          Left = 571
          Top = 16
          Width = 75
          Height = 25
          Hint = 'Carrega o texto dos arquivos selecionados na grid'
          Caption = 'Carregar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btCarregarClick
        end
        object btFechar: TButton
          Left = 657
          Top = 16
          Width = 75
          Height = 25
          Hint = 'Fecha os arquivos abertos e limpa a grid'
          Caption = 'Fechar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btFecharClick
        end
        object btSair: TButton
          Left = 745
          Top = 16
          Width = 82
          Height = 25
          Hint = 'Sai do programa'
          Caption = 'Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btSairClick
        end
        object GroupBox2: TGroupBox
          Left = 356
          Top = 8
          Width = 203
          Height = 38
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabOrder = 3
          StyleElements = [seFont, seClient]
          object Label16: TLabel
            Left = 8
            Top = 10
            Width = 54
            Height = 13
            Caption = 'Disposi'#231#227'o:'
          end
          object rdVertical: TRadioButton
            Left = 69
            Top = 10
            Width = 69
            Height = 17
            Hint = 
              'Os componentes que exibem os textos s'#227'o apresentados um ao lado ' +
              'do outro'
            Caption = 'Vertical'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = rdVerticalClick
          end
          object rdHorizontal: TRadioButton
            Left = 133
            Top = 10
            Width = 69
            Height = 17
            Hint = 
              'Os componentes que exibem os textos s'#227'o apresentados um em cima ' +
              'do outro'
            Caption = 'Horizontal'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
            OnClick = rdHorizontalClick
          end
        end
        object GroupBox3: TGroupBox
          Left = 7
          Top = 8
          Width = 165
          Height = 38
          TabOrder = 4
          object Label7: TLabel
            Left = 10
            Top = 11
            Width = 33
            Height = 13
            Caption = 'Carga:'
          end
          object rdCargaArquivos: TRadioButton
            Left = 47
            Top = 9
            Width = 66
            Height = 17
            Hint = 
              'A grid ser'#225' carregada a partir de um arquivo em ingl'#234's, um arqui' +
              'vo traduzido e opcionalmente um arquivo em espanhol.'
            Caption = 'Arquivos'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = True
            OnClick = rdCargaArquivosClick
          end
          object rdCargaPastas: TRadioButton
            Left = 111
            Top = 9
            Width = 50
            Height = 17
            Hint = 
              'A grid ser'#225' carregada a partir dos arquivos de uma pasta em ingl' +
              #234's, uma pasta com arquivos traduzidos e opcionalmente uma pasta ' +
              'com arquivos em espanhol.'
            Caption = 'Pastas'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = rdCargaPastasClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 180
          Top = 8
          Width = 165
          Height = 38
          TabOrder = 5
          object Label12: TLabel
            Left = 10
            Top = 11
            Width = 44
            Height = 13
            Caption = 'Formato:'
          end
          object rdAnsi: TRadioButton
            Left = 57
            Top = 9
            Width = 66
            Height = 17
            Hint = 
              'A grid ser'#225' carregada a partir de um arquivo em ingl'#234's, um arqui' +
              'vo traduzido e opcionalmente um arquivo em espanhol.'
            Caption = 'ANSI'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object rdUTF8: TRadioButton
            Left = 108
            Top = 9
            Width = 50
            Height = 17
            Hint = 
              'A grid ser'#225' carregada a partir dos arquivos de uma pasta em ingl' +
              #234's, uma pasta com arquivos traduzidos e opcionalmente uma pasta ' +
              'com arquivos em espanhol.'
            Caption = 'UTF-8'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
        end
      end
      object pnTipoCarga: TPanel
        Left = 1
        Top = 1
        Width = 1025
        Height = 242
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 976
        object pnAbrirArquivosInglesTraduzidoEspanhol: TPanel
          Left = 1
          Top = 121
          Width = 1023
          Height = 120
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 974
          DesignSize = (
            1023
            120)
          object Label9: TLabel
            Left = 4
            Top = 38
            Width = 73
            Height = 13
            Caption = 'Arquivo Ingl'#234's:'
          end
          object Label10: TLabel
            Left = 3
            Top = 67
            Width = 91
            Height = 13
            Caption = 'Arquivo Traduzido:'
          end
          object Label11: TLabel
            Left = 4
            Top = 93
            Width = 87
            Height = 13
            Caption = 'Arquivo Espanhol:'
          end
          object btEscolherArquivoTraduzido: TButton
            Left = 909
            Top = 61
            Width = 75
            Height = 24
            Hint = 'Seleciona o arquivo contendo os textos traduzidos'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btEscolherArquivoTraduzidoClick
            ExplicitLeft = 860
          end
          object btEscolherArquivoIngles: TButton
            Left = 909
            Top = 31
            Width = 75
            Height = 25
            Hint = 'Seleciona o arquivo contendo os textos em ingl'#234's'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btEscolherArquivoInglesClick
            ExplicitLeft = 860
          end
          object edIngles: TEdit
            Left = 83
            Top = 35
            Width = 819
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            ExplicitWidth = 770
          end
          object edTraduzido: TEdit
            Left = 100
            Top = 62
            Width = 802
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 3
            ExplicitWidth = 753
          end
          object edEspanhol: TEdit
            Left = 96
            Top = 90
            Width = 806
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 4
            ExplicitWidth = 757
          end
          object btEscolherArquivoEspanhol: TButton
            Left = 908
            Top = 89
            Width = 75
            Height = 24
            Hint = 'Seleciona o arquivo contendo os textos em espanhol'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = btEscolherArquivoEspanholClick
            ExplicitLeft = 859
          end
        end
        object pnAbrirPastasInglesTraduzidoEspanhol: TPanel
          Left = 1
          Top = 1
          Width = 1023
          Height = 120
          Align = alTop
          TabOrder = 1
          Visible = False
          ExplicitWidth = 974
          DesignSize = (
            1023
            120)
          object Label17: TLabel
            Left = 4
            Top = 35
            Width = 63
            Height = 13
            Caption = 'Pasta Ingl'#234's:'
          end
          object Label18: TLabel
            Left = 3
            Top = 63
            Width = 81
            Height = 13
            Caption = 'Pasta Traduzido:'
          end
          object Label19: TLabel
            Left = 3
            Top = 90
            Width = 77
            Height = 13
            Caption = 'Pasta Espanhol:'
          end
          object edPastaIngles: TEdit
            Left = 73
            Top = 30
            Width = 821
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            ExplicitWidth = 772
          end
          object btEscolherPastaIngles: TButton
            Left = 899
            Top = 28
            Width = 75
            Height = 25
            Hint = 'Seleciona o arquivo contendo os textos em ingl'#234's'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btEscolherPastaInglesClick
            ExplicitLeft = 850
          end
          object edPastaTraduzido: TEdit
            Left = 90
            Top = 60
            Width = 804
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            ExplicitWidth = 755
          end
          object btEscolherPastaTraduzido: TButton
            Left = 899
            Top = 57
            Width = 75
            Height = 24
            Hint = 'Seleciona o arquivo contendo os textos traduzidos'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btEscolherPastaTraduzidoClick
            ExplicitLeft = 850
          end
          object edPastaEspanhol: TEdit
            Left = 86
            Top = 87
            Width = 808
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 4
            ExplicitWidth = 759
          end
          object btEscolherPastaEspanhol: TButton
            Left = 900
            Top = 84
            Width = 75
            Height = 24
            Hint = 'Seleciona o arquivo contendo os textos em espanhol'
            Anchors = [akTop, akRight]
            Caption = 'Selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = btEscolherPastaEspanholClick
            ExplicitLeft = 851
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 364
      Width = 1027
      Height = 35
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 978
      object Label8: TLabel
        Left = 1
        Top = 1
        Width = 39
        Height = 33
        Align = alLeft
        Caption = 'Linha:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lbLinha: TLabel
        Left = 40
        Top = 1
        Width = 4
        Height = 33
        Align = alLeft
        Caption = '-'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label4: TLabel
        Left = 239
        Top = 1
        Width = 157
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = '      Ctrl+DIREITA: pr'#243'xima linha       '
        Layout = tlCenter
        ExplicitLeft = 743
        ExplicitTop = 2
      end
      object Label5: TLabel
        Left = 578
        Top = 1
        Width = 111
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = '        Ctrl+G: tradu'#231#227'o'
        Layout = tlCenter
      end
      object Label20: TLabel
        Left = 131
        Top = 1
        Width = 104
        Height = 33
        Align = alLeft
        Caption = '          Carregados:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lbArquivo: TLabel
        Left = 127
        Top = 1
        Width = 4
        Height = 33
        Align = alLeft
        Caption = '-'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label25: TLabel
        Left = 44
        Top = 1
        Width = 83
        Height = 33
        Align = alLeft
        Caption = '          Arquivo:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 191
        ExplicitTop = -3
      end
      object lbTotalArquivos: TLabel
        Left = 235
        Top = 1
        Width = 4
        Height = 33
        Align = alLeft
        Caption = '-'
        Layout = tlCenter
        ExplicitLeft = 199
        ExplicitHeight = 13
      end
      object Label26: TLabel
        Left = -21
        Top = -81
        Width = 182
        Height = 116
        AutoSize = False
        Caption = '        Ctrl+ESQUERDA: linha anterior   '
        Layout = tlCenter
      end
      object Label24: TLabel
        Left = 396
        Top = 1
        Width = 182
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = '        Ctrl+ESQUERDA: linha anterior   '
        Layout = tlCenter
        ExplicitLeft = 507
        ExplicitTop = -3
      end
      object pnProxArquivo: TPanel
        Left = 689
        Top = 1
        Width = 435
        Height = 33
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        ExplicitLeft = 652
        object Label22: TLabel
          Left = 128
          Top = 0
          Width = 96
          Height = 33
          Align = alLeft
          AutoSize = False
          Caption = '        Arquivo ant.:'
          Layout = tlCenter
          ExplicitLeft = 121
          ExplicitTop = 1
          ExplicitHeight = 31
        end
        object Label23: TLabel
          Left = 0
          Top = 0
          Width = 104
          Height = 33
          Align = alLeft
          AutoSize = False
          Caption = '        Pr'#243'x. arquivo:'
          Layout = tlCenter
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 31
        end
        object btArquivoAnt: TBitBtn
          Left = 224
          Top = 0
          Width = 24
          Height = 33
          Align = alLeft
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFBE7E2C8D0C895C5BC7FC5BC7FD0C895E7E2C8FDFDFBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5CCB9AD63AEA049AEA049AE
            A049AEA049AEA049AEA049B9AD63E8E5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            DDD7B2AFA04AAEA049AEA049AEA049AEA049AEA049AEA049AEA049AEA049AFA1
            49DCD6B0FFFFFFFFFFFFFFFFFFE8E5CCAFA04AAEA049AEA049AEA049AEA049AE
            A049C7BD81C3B877AEA049AEA049AEA049AFA04AE8E4CBFFFFFFFDFDFBB9AD63
            AEA049AEA049AEA049AEA049AEA049CFC794FFFFFEF2F0E2AEA049AEA049AEA0
            49AEA049B8AC62FDFDFBE7E2C8AEA049AEA049AEA049AEA049AEA049CFC794FF
            FFFEFBFBF6C1B775AEA049AEA049AEA049AEA049AEA049E6E2C7D0C895AEA049
            AEA049AEA049AEA049CFC794FFFFFEFBFBF6C1B674AEA049AEA049AEA049AEA0
            49AEA049AEA049D0C795C5BC7FAEA049AEA049AEA049C2B775FFFFFEFCFBF8C1
            B674AEA049AEA049AEA049AEA049AEA049AEA049AEA049C6BC7FC5BC7FAEA049
            AEA049AEA049BDB16AFCFCF9FEFEFDCCC38DAEA049AEA049AEA049AEA049AEA0
            49AEA049AEA049C6BC7FD0C895AEA049AEA049AEA049AEA049C4BA7BFCFCF9FE
            FEFDCCC38DAEA049AEA049AEA049AEA049AEA049AEA049CFC794E6E2C7AEA049
            AEA049AEA049AEA049AEA049C4BA7BFCFCF9FEFEFDCCC38BAEA049AEA049AEA0
            49AEA049AEA049E6E1C6FDFDFBB8AC62AEA049AEA049AEA049AEA049AEA049C4
            BA7BFCFCF9F2EFE1AEA049AEA049AEA049AEA049B9AD60FDFDFBFFFFFFE8E4CC
            AFA04AAEA049AEA049AEA049AEA049AEA049BCB169BAAE63AEA049AEA049AEA0
            49AD9F4AE8E4CBFFFFFFFFFFFFFFFFFFDCD6B1AFA149AEA049AEA049AEA049AE
            A049AEA049AEA049AEA049AEA049AFA149DCD6B0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE7E3C9B9AD63AEA049AEA049AEA049AEA049AEA049AEA049B9AD60E7E3
            C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBE6E2C7D0C795C5
            BC7FC5BC7FCFC794E6E2C7FDFDFBFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 0
          OnClick = btArquivoAntClick
        end
        object btProxArquivo: TBitBtn
          Left = 104
          Top = 0
          Width = 24
          Height = 33
          Align = alLeft
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFBE7E2C8D0C895C5BC7FC5BC7FD0C895E7E2C8FDFDFBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5CCB9AD63AEA049AEA049AE
            A049AEA049AEA049AEA049B9AD63E8E5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            DCD6B0AFA149AEA049AEA049AEA049AEA049AEA049AEA049AEA049AEA049AFA0
            4ADDD7B2FFFFFFFFFFFFFFFFFFE8E4CBAFA04AAEA049AEA049AEA049C3B877C7
            BD81AEA049AEA049AEA049AEA049AEA049AFA04AE8E5CCFFFFFFFDFDFBB8AC62
            AEA049AEA049AEA049AEA049F2F0E2FFFFFECFC794AEA049AEA049AEA049AEA0
            49AEA049B9AD63FDFDFBE6E2C7AEA049AEA049AEA049AEA049AEA049C1B775FB
            FBF6FFFFFECFC794AEA049AEA049AEA049AEA049AEA049E7E2C8D0C795AEA049
            AEA049AEA049AEA049AEA049AEA049C1B674FBFBF6FFFFFECFC794AEA049AEA0
            49AEA049AEA049D0C895C6BC7FAEA049AEA049AEA049AEA049AEA049AEA049AE
            A049C1B674FCFBF8FFFFFEC2B775AEA049AEA049AEA049C5BC7FC6BC7FAEA049
            AEA049AEA049AEA049AEA049AEA049AEA049CCC38DFEFEFDFCFCF9BDB16AAEA0
            49AEA049AEA049C5BC7FCFC794AEA049AEA049AEA049AEA049AEA049AEA049CC
            C38DFEFEFDFCFCF9C4BA7BAEA049AEA049AEA049AEA049D0C895E6E1C6AEA049
            AEA049AEA049AEA049AEA049CCC38BFEFEFDFCFCF9C4BA7BAEA049AEA049AEA0
            49AEA049AEA049E6E2C7FDFDFBB9AD60AEA049AEA049AEA049AEA049F2EFE1FC
            FCF9C4BA7BAEA049AEA049AEA049AEA049AEA049B8AC62FDFDFBFFFFFFE8E4CB
            AD9F4AAEA049AEA049AEA049BAAE63BCB169AEA049AEA049AEA049AEA049AEA0
            49AFA04AE8E4CCFFFFFFFFFFFFFFFFFFDCD6B0AFA149AEA049AEA049AEA049AE
            A049AEA049AEA049AEA049AEA049AFA149DCD6B1FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE7E3C9B9AD60AEA049AEA049AEA049AEA049AEA049AEA049B9AD63E7E3
            C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBE6E2C7CFC794C5
            BC7FC5BC7FD0C795E6E2C7FDFDFBFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 1
          OnClick = btProxArquivoClick
        end
      end
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 305
      Width = 1027
      Height = 59
      TabStop = False
      Align = alClient
      BevelInner = bvLowered
      ColCount = 4
      DefaultColWidth = 20
      DefaultRowHeight = 10
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 2
      Options = [goDrawFocusSelected, goRowSelect]
      ParentColor = True
      ScrollBars = ssVertical
      TabOrder = 2
      OnClick = StringGrid1Click
      OnDrawCell = StringGrid1DrawCell
      OnKeyUp = StringGrid1KeyUp
      OnSelectCell = StringGrid1SelectCell
      ExplicitWidth = 978
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 7
      Width = 23
      Height = 24
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8777777777777778F7FFFFFFFFFFFF7FFF7FFFFFFFFFF7FFFFF7FFFFFFFF
        7FFFFFFF7FFFFFF7FFFFFFFFF7FFFF7FFFFFFFFFFF7FF7FFFFFFFFFFFFF77FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 33
      Top = 7
      Width = 23
      Height = 24
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF7777FFFFFFFFFFFF7777FFFFFFFFF8FF0770FF8FFFFFF7878FF788
        7FFFFFFF87FFFF78FFFFFFFF7FFFFFF7FFFFFFF88FFFFFF78FFFF7778FFFFFF8
        877FFFF78FFFFFF88FFFFFF87FFFFFF7FFFFFFFF77FFFF78FFFFFFF887777788
        8FFFFFF7FFF8FFFF7FFFFFFFFFF78FFFFFFFFFFFFFF88FFFFFFF}
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 59
      Top = 7
      Width = 23
      Height = 24
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        F6E9EAF9FFFFFFFBD6FEFFFFFFF9C28190ABA78E83C0A78050FCFFFFE47DCBFC
        FFEDF7FFF9D3E4F296FFFFE384F3FFFFA79C81D4FFFFFFD0C0FFFA7BF5FFFFFE
        84FFC8C4FFFFFFF57EF9C2CCFFFFFFFF80FFBEDBFFFFFFFFCCC288F9FFFFFFFF
        8BFAD5C1FFFFFFFFFA8883FFFFFFFFFFA2EFEFA0FFFFFFFFFF8283FFFFFFFFFF
        65F3DFAAFFFFFFFFFF8283FDFFFFFFFFD5879CF3FFFFFFFFFD82B5D9FFFFFFFF
        F9A78CD8FFFFFFFFD8B6F381FCFFFFFFCDBCF67DF9FFFFFB80F3FFD19BFCFFFF
        F17AA188FDFFFC9AD2FFFFFFCE87E6FFFFFCEDFDFFE586CEFFFFFFFFFFEC9E86
        B7CACAB7859FECFFFFFFFFFFFFFFFFFADDCFCFDDFAFFFFFFFFFF}
      TabOrder = 5
      OnClick = BitBtn3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofEnableSizing]
    Left = 520
    Top = 312
  end
end
