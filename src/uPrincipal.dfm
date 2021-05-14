object frmPrincipal: TfrmPrincipal
  Left = 316
  Top = 87
  Caption = 'ProvaDelphiApp'
  ClientHeight = 539
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenu: TMainMenu
    Left = 408
    Top = 272
    object mniTarefas: TMenuItem
      Caption = 'Tarefas'
      object mniTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = mniTarefa1Click
      end
      object mniTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = mniTarefa2Click
      end
      object mniTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = mniTarefa3Click
      end
    end
  end
end
