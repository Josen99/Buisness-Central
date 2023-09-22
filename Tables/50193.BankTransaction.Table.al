table 50193 "Bank Transaction Josen"
{
    DataClassification = AccountData;
    Caption = 'Bank Transaction Josen';

    fields
    {
        field(1; "Entity No."; Integer)
        {
            Caption = 'Entity no.';
            // AutoIncrement = true;
            //   Editable = false;
        }
        field(10; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(20; Amount; Decimal)
        {
            DataClassification = AccountData;
            Caption = 'Amount';
        }
        field(30; "Friend No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = FriendsJosen."No.";
            Caption = 'Friend No.';
        }

    }

    keys
    {
        key(PK; "Entity No.")
        {
            Clustered = true;
        }
    }
}