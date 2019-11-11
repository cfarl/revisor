program ProjetoRevisor;

uses
  Vcl.Forms,
  URevisor in 'URevisor.pas' {frRevisor},
  Vcl.Themes,
  Vcl.Styles,
  USobre in 'USobre.pas' {frSobre},
  Unit1 in 'Unit1.pas' {Form1},
  UPesquisar in 'UPesquisar.pas' {frPesquisar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrRevisor, frRevisor);
  Application.CreateForm(TfrSobre, frSobre);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrPesquisar, frPesquisar);
  System.ReportMemoryLeaksOnShutdown := True;
  Application.Run;
  
end.
