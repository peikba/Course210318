codeunit 123456703 "Seminar Document-Print"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 9 - Lab 1
    //     - Created new codeunit


    trigger OnRun();
    begin
    end;

    procedure PrintSeminarRegistrationHeader(SeminarRegHeader : Record "Seminar Registration Header");
    var
        ReportSelection : Record "Seminar Report Selections";
    begin
        SeminarRegHeader.SetRecFilter;
        ReportSelection.SetRange(Usage,ReportSelection.Usage::Registration);
        ReportSelection.SetFilter("Report ID",'<>0');
        ReportSelection.Ascending := false;
        ReportSelection.Find('-');
        repeat
          Report.Run(ReportSelection."Report ID",true,false,SeminarRegHeader);
        until ReportSelection.NEXT = 0;
    end;
}

