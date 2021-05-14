object frmTarefa3: TfrmTarefa3
  Left = 741
  Top = 248
  Caption = 'frmTarefa3'
  ClientHeight = 441
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 288
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -6
    object grp1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 578
      Height = 282
      Align = alClient
      Caption = 'Valores por projeto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 200
      ExplicitTop = 96
      ExplicitWidth = 185
      ExplicitHeight = 105
      object dbgProjetos: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 568
        Height = 259
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IdProjeto'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProjeto'
            Width = 359
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 88
            Visible = True
          end>
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 288
    Width = 584
    Height = 153
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTotais: TPanel
      Left = 368
      Top = 0
      Width = 216
      Height = 153
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object lbl1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 210
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Total R$'
        ExplicitLeft = 173
        ExplicitWidth = 40
      end
      object lbl2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 46
        Width = 210
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Total Divis'#245'es R$'
        ExplicitLeft = 131
        ExplicitWidth = 82
      end
      object pnl1: TPanel
        Left = 0
        Top = 16
        Width = 216
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 0
        object edtTotal: TEdit
          AlignWithMargins = True
          Left = 120
          Top = 3
          Width = 93
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 80
        end
        object btnTotalizar: TBitBtn
          Left = 0
          Top = 0
          Width = 114
          Height = 27
          Align = alLeft
          Caption = 'Obter Total'
          TabOrder = 1
          OnClick = btnTotalizarClick
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 59
        Width = 216
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 76
        ExplicitWidth = 176
        object edtDivisoes: TEdit
          AlignWithMargins = True
          Left = 120
          Top = 3
          Width = 93
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 80
        end
        object btnDividir: TBitBtn
          Left = 0
          Top = 0
          Width = 114
          Height = 27
          Align = alLeft
          Caption = 'Obter Total Divis'#245'es'
          TabOrder = 1
          OnClick = btnDividirClick
        end
      end
    end
  end
end
