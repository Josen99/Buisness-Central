table 50190 FriendsJosen
{
    Caption = 'Friends';
    DataClassification = CustomerContent;
    Description = 'Tabell di prova perl''academy';
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(10; "Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(20; "Surname"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Surname';
        }
        field(30; "Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Birth';
        }
        field(40; CAP; Code[5])
        {
            DataClassification = CustomerContent;
            Caption = 'CAP';
            TableRelation = CAPJ.CAP;
        }
        field(50; city; Code[100])
        {
            DataClassification = CustomerContent;
            Caption = 'city';
            TableRelation = CAPJ.city;
        }
        field(60; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Bank Transaction Josen".Amount where("Friend No." = field("No."), "Date" = field("Date Filter")));
            Editable = false;
        }
        field(70; MinAmount; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = min("Bank Transaction Josen".Amount where("Friend No." = field("No.")));
            Editable = false;
        }
        field(80; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
            Caption = 'Date Filter';
        }
        field(90; "Season"; Enum "Season enum josen")
        {
            DataClassification = ToBeClassified;
            Caption = 'Season';
            Editable = true;
        }

    }
    keys
    {
        key(PK; "No.")//PK significa primary key
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        Message('Sono il trigger Onisert');
    end;
}