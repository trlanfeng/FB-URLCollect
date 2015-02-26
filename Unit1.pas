unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    memo1: TMemo;
    button1: TButton;
    edit1: TEdit;
    edit2: TEdit;
    Edit3: TEdit;
    ListBox1: TListBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    procedure button1Click(Sender: TObject);
    procedure memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function SplitString(const source, ch: string): TStringList;
var
  temp, t2: string;
  i: integer;
begin
  result := TStringList.Create;
  temp := source;
  i := pos(ch, source);
  while i <> 0 do
  begin
    t2 := copy(temp, 0, i - 1);
    if (t2 <> '') then
      result.Add(t2);
    delete(temp, 1, i - 1 + Length(ch));
    i := pos(ch, temp);
  end;
  result.Add(temp);
end;

procedure TForm1.button1Click(Sender: TObject);
var
  text : string;
  a,b,l,l1,l2,i,j: Integer;
  stl: TStringList;
  fg : string;
  thisline,thisline_na,thisline_final :string;
begin
  j := 0;
  text := memo1.Lines.Text;
  stl := SplitString(text,Edit3.Text);
  l1 := Length(edit1.Text);
  l2 := Length(edit2.Text);
  for i := 0 to stl.Count-1 do
  begin
    thisline := stl[i];
    a := Pos(edit1.Text,thisline);
    b := Pos(edit2.Text,thisline);
    l := Length(thisline);
    thisline_na := Copy(thisline,a+l1,b-a-l1);
    if (thisline_na <> '') then
    begin
      if (Pos(edit6.Text,thisline_na) < 1) then
      begin
        thisline_final := Edit4.Text + thisline_na + Edit5.Text;
        ListBox1.Items.Add(thisline_final);
        j := j+1;
      end;
    end;
  end;
  ShowMessage('本次共采集了'+inttostr(j)+'个网址。');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  astr: string;
  sList: TStrings;
  path: string;
begin
    sList := TStringList.Create;
    try
       if SaveDialog1.Execute() then
       begin
         ListBox1.Items.SaveToFile(SaveDialog1.FileName);
       end;
    finally
      sList.Free;
    end;
end;

procedure TForm1.memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift =[ssCtrl]) and (Key=65) then
    Memo1.SelectAll;
end;

end.
