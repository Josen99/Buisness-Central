table 50192 RegionJ
{
    DataClassification = ToBeClassified;
    Caption = 'Regione';

    fields
    {
        field(1; Regione; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Regione';
        }
    }

    keys
    {
        key(PK; Regione)
        {
            Clustered = true;
        }
    }

}