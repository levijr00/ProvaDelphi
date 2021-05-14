object frmTarefa2: TfrmTarefa2
  Left = 740
  Top = 203
  Caption = 'Tarefa 2'
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
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlProgressos: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 113
    Align = alTop
    TabOrder = 0
    object pnlThread1: TPanel
      Left = 1
      Top = 1
      Width = 503
      Height = 111
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object grpThread1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 497
        Height = 47
        Align = alTop
        Caption = 'Thread 1'
        TabOrder = 0
        DesignSize = (
          497
          47)
        object pgbThread1: TProgressBar
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 399
          Height = 24
          Align = alLeft
          TabOrder = 1
        end
        object speTimer1: TSpinEdit
          AlignWithMargins = True
          Left = 410
          Top = 18
          Width = 82
          Height = 24
          Anchors = [akTop, akRight, akBottom]
          MaxValue = 10000
          MinValue = 1
          TabOrder = 0
          Value = 1
        end
      end
      object grpThread2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 56
        Width = 497
        Height = 47
        Align = alTop
        Caption = 'Thread 2'
        TabOrder = 1
        DesignSize = (
          497
          47)
        object pgbThread2: TProgressBar
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 399
          Height = 24
          Align = alLeft
          TabOrder = 0
        end
        object speTimer2: TSpinEdit
          AlignWithMargins = True
          Left = 410
          Top = 18
          Width = 82
          Height = 24
          Anchors = [akTop, akRight, akBottom]
          MaxValue = 10000
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
      end
    end
    object pnlControles: TPanel
      Left = 504
      Top = 1
      Width = 79
      Height = 111
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object btnExecutar: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 45
        Width = 73
        Height = 25
        Margins.Top = 45
        Align = alTop
        Caption = 'Executar'
        TabOrder = 0
        OnClick = btnExecutarClick
      end
    end
  end
end
