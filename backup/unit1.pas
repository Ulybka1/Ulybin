unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b:real;
s:string;
begin
a:=StrtoFloat(edit1.Text);

b:=StrtoFloat(edit2.Text);
s:=FloattoStr(a/b*16.67);

edit3.Text:=s;

     end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Memo1.visible:=false;
Button2.visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Memo1.visible:=true;
Button2.visible:=true;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);


begin
if not (Key in [#8,',','0'..'9'])
then
begin
MessageDlg(' Введите правильные данные',mtInformation,[mbOk],0);
Key:=#0;

end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);


begin
if not (Key in [#8,',','0'..'9'])
then
begin
MessageDlg(' Введите правильные данные',mtInformation,[mbOk],0);
Key:=#0;
end;
end;
end.

