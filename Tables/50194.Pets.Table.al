table 50194 "Pets Table Josen"
{
    DataClassification = ToBeClassified;
    Caption = 'pets';

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'No.';
            Editable = false;
        }
        field(10; Owner; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = FriendsJosen."No.";
            Caption = 'Owner';
        }
        field(20; "Owner Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(FriendsJosen.Name where("No." = field(Owner)));
            Editable = false;
            Caption = 'Owner Name';
        }
        field(30; "Pets Type"; Enum "Pets type josen")
        {
            DataClassification = ToBeClassified;
            TableRelation = FriendsJosen."No.";
            Caption = 'Pets Type';
        }
        field(40; Name; Code[50])
        {
            DataClassification = ToBeClassified;
        }



    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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