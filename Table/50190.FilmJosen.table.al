table 50190 "Film Josen"
{
    Caption = 'FilmJosen';
    DataClassification = ToBeClassified;
    fields
    {
        field(10; "Numero serie"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Numere serie';
            Editable = false;

        }
        field(20; titolo; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Titolo';
        }
        field(30; Genere; Enum FilmCAtegoriaJosenEnum)
        {
            DataClassification = ToBeClassified;
            Caption = 'Genere';
            Editable = true;
        }
        field(40; Regista; Code[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Regista';
            TableRelation = "Regista Josen"."No.";
        }
        field(50; Attori; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Attori';
            TableRelation = "Attori Josen"."No.";
        }
        field(60; "Data Uscita"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Data Uscita';

        }
        field(70; Nazione; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nazione';
            TableRelation = "Country/Region";
        }
        field(80; "No."; Code[20])
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


    trigger OnInsert()
    var
        NoSeriesManagment: Codeunit NoSeriesManagement;
    begin
        if ("No." = '') then begin
            NoSeriesManagment.InitSeries('FILMJOSEN', xRec."Numero serie", 0D, "No.", "Numero serie");
        end;
    end;



}