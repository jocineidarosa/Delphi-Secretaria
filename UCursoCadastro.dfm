object FrmCursoCadastro: TFrmCursoCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cursos'
  ClientHeight = 132
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlCadastro: TPanel
    Left = 8
    Top = 8
    Width = 440
    Height = 113
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Curso:'
    end
    object Label2: TLabel
      Left = 11
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object LblNomeRequerido: TLabel
      Left = 426
      Top = 14
      Width = 7
      Height = 13
      Caption = '*'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object LblDescricaoRequerido: TLabel
      Left = 426
      Top = 41
      Width = 7
      Height = 13
      Caption = '*'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object LblMensagemRequerido: TLabel
      Left = 11
      Top = 75
      Width = 130
      Height = 13
      Caption = '* Campos obrigat'#243'rios!'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object TxtNome: TEdit
      Left = 76
      Top = 11
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 0
    end
    object BtnCancelar: TButton
      Left = 346
      Top = 70
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object TxtDescricao: TEdit
      Left = 75
      Top = 38
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 200
      TabOrder = 1
    end
    object BtnGravar: TButton
      Left = 265
      Top = 70
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 2
      OnClick = BtnGravarClick
    end
  end
end
