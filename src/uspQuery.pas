unit uspQuery;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  FireDAC.Phys, FireDAC.Phys.TDBXBase, FireDAC.Phys.DS;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    function CriarStringList: TStringList;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure GeraSQL;
  published
    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
    property spColunas: TStringList read FspColunas write FspColunas;
    property spTabelas: TStringList read FspTabelas write FspTabelas;
  end;

  procedure Register;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   FspCondicoes := TStringList.Create;
   FspTabelas   := TStringList.Create;

   FspColunas                 := TStringList.Create;
   FspColunas.Delimiter       := ',';
   FspColunas.StrictDelimiter := True;
end;

function TspQuery.CriarStringList: TStringList;
begin
   Result := TStringList.Create;
   Result.Delimiter
end;

destructor TspQuery.Destroy;
begin
   FspCondicoes.Free;
   FspColunas.Free;
   FspTabelas.Free;
   inherited;
end;

procedure TspQuery.GeraSQL;
begin
   if (FspTabelas.Count = 1) then
   begin
      if (Trim(FspColunas.Text) = '') then
      begin
         FspColunas.Add('*');
      end;

      Self.SQL.Text := Format('select %s from %s where %s', [FspColunas.DelimitedText, FspTabelas.Text, FspCondicoes.Text]);
   end
   else
   begin
      raise Exception.Create('É permitido informar apenas 1 tabela para a geração do SQL.');
   end;
end;

procedure Register;
begin
    RegisterComponents('spComponentes', [TspQuery]);
end;

end.
