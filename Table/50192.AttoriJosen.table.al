table 50192 "Attori Josen"
{
    Caption = 'Attori Josen';
    DataClassification = ToBeClassified;
    fields
    {
        field(10; "Numero serie"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Numero di serie';
            Editable = false;
        }
        field(20; Nome; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nome';
        }
        field(30; Cognome; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cognome';
        }
        field(40; Nazione; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nazione';
            TableRelation = "Country/Region";
        }
        field(50; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'NO.';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Nome, Cognome) { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        NoSeriesManagment: Codeunit NoSeriesManagement;
    begin
        if ("No." = '') then begin
            NoSeriesManagment.InitSeries('FILMJOSEN', xRec."Numero serie", 0D, "No.", "Numero serie");
        end;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}