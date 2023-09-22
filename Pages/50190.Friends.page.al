page 50190 "FriendsJosenList"
{
    PageType = List;
    ApplicationArea = All;// persone che possono vedere la mia pagina
    UsageCategory = Lists;
    SourceTable = FriendsJosen;
    Caption = 'Friends Josen list';
    CardPageId = "Friends Josen Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'prova No.';
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tooltip per il nome';
                }
                field("Surname"; Rec."Surname")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tooltip per il Cognome';
                }
                field("Birth"; Rec."Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tooltip per la data di nascita';
                }
                field("CAP"; Rec."CAP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tooltip per il CAP';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tooltip per l''Amount';
                    DrillDownPageId = "Bank Trnsaction list josen";
                }
                field(MinAmount; Rec.MinAmount)
                {
                    ToolTip = 'Specifies the value of the MinAmount field.';
                    ApplicationArea = All;
                }
                field(Season; Rec.Season)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of season';
                }

            }
        }

    }
    actions
    {
        area(Reporting)
        {
            action(TentoExpotXML)
            {
                ApplicationArea = All;
                trigger OnAction();
                var
                    myXML: XmlPort "Friends Josen Xmlport";
                    OutStr: OutStream;
                    InStr: InStream;
                    TempBlob: Codeunit "Temp Blob";
                    FileManagement: Codeunit "File Management";
                    FileName: Text;
                begin
                    FileName := 'Exportfriend.xml';
                    TempBlob.CreateOutStream(OutStr);
                    myXML.SetDestination(OutStr);
                    myXML.Export();
                    TempBlob.CreateInStream(InStr);
                    File.DownloadFromStream(Instr, 'Download XML Export', '', FileManagement.GetToFilterText('', FileName), FileName);
                end;
            }
            action(DebugFriendsPageJosen)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    number1, number2 : integer;
                    risultato: Integer;
                    messaggioFinale: Label '%1 diviso %2 fa %3';
                begin
                    number1 := 12;
                    number2 := 4;
                    risultato := number1 / number2;
                    Message(messaggioFinale, number1, number2, risultato);
                end;
            }
        }
    }


}