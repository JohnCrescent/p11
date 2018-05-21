unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,l:integer;
  slovo:string;
  ok:boolean;
begin
  slovo:=edit1.text;  //načíta slovo
 ok:=true;
 l:=length(slovo);     //načíta dĺžku slova

for i:=1 to (l div 2) do   //porovná písmená a zistí či sú rovnaké alebo nie
   if upcase(slovo[i])<>upcase(slovo[l-i+1]) then ok:=false;

if ok=false then label3.caption:='Zadané slovo nie je palindrom';  //vypíše odpoveď
if ok= true then label3.caption:='Zadané slovo je palindrom.';

end;

end.

