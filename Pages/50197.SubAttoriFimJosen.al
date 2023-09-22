page 50197 "Sub Attori Film List josen"
{
    PageType = ListPart;
    SourceTable = "Film e Attori Josen";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field(Film; Rec.Film)
                {
                    ToolTip = 'Specifies the value of the Film field.';
                    Editable = false;
                }
                field(Attore; Rec.Attori)
                {
                    ToolTip = 'Specifies the value of the Attori field.';
                }
                field("Nome Attore "; Rec."Nome Attore")
                {
                    ToolTip = 'Specifies the value of the Nome Attore  field.';
                }
                field("Cognome Attore"; Rec."Cognome Attore")
                {
                    ToolTip = 'Specifies the value of the Cognome Attore field.';
                }

            }
        }
    }

}
