table 50191 CAPJ
{
    DataClassification = ToBeClassified;
    Caption = 'CAP';
    fields
    {
        field(1; CAP; Code[5])
        {
            DataClassification = ToBeClassified;
            Caption = 'CAP';
        }
        field(10; city; Text[100])
        {
            Caption = 'City';
        }
        field(20; Regione; Text[100])
        {
            Caption = 'Regione';
            TableRelation = RegionJ.Regione;
        }
    }

    keys
    {
        key(PK; CAP, City)
        {
            Clustered = true;
        }
    }

}