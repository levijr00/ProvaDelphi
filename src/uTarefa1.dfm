object frmTarefa1: TfrmTarefa1
  Left = 452
  Top = 262
  Caption = 'Tarefa 1'
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
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grpConfigConsulta: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 578
    Height = 435
    Align = alClient
    Caption = 'Configura'#231#227'o de consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlCabecalho: TPanel
      Left = 2
      Top = 15
      Width = 574
      Height = 165
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnlCabecalho'
      TabOrder = 0
      object grpColunas: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 159
        Height = 159
        Align = alLeft
        Caption = 'grpColunas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object memColunas: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 149
          Height = 136
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object grpTabelas: TGroupBox
        AlignWithMargins = True
        Left = 168
        Top = 3
        Width = 159
        Height = 159
        Align = alClient
        Caption = 'grpTabelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object memTabelas: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 149
          Height = 136
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object grpCondicoes: TGroupBox
        AlignWithMargins = True
        Left = 333
        Top = 3
        Width = 159
        Height = 159
        Align = alRight
        Caption = 'Condi'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object memCondicao: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 149
          Height = 136
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object pnlControles: TPanel
        Left = 495
        Top = 0
        Width = 79
        Height = 165
        Align = alRight
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object btnGeraSQL: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 80
          Width = 73
          Height = 25
          Margins.Top = 80
          Align = alTop
          Caption = 'Gera SQL'
          TabOrder = 0
          OnClick = btnGeraSQLClick
        end
      end
    end
    object grpSQLGerado: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 183
      Width = 568
      Height = 247
      Align = alClient
      Caption = 'SQL gerado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object memSQL: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 558
        Height = 224
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object spQuery1: TspQuery
    Left = 524
    Top = 34
  end
end
