table 50193 "Film e Attori Josen"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; Film; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Film Josen"."No.";

        }
        field(20; Attori; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Attori Josen"."No.";

        }
        field(30; "Nome Attore"; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Attori Josen".Nome where("No." = field(Attori)));
        }
        field(40; "Cognome Attore"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Attori Josen".Cognome where("No." = field(Attori)));
        }
    }

    keys
    {
        key(PK; Film, Attori)
        {
            Clustered = true;
        }
    }


}