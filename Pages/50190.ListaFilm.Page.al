page 50190 "Lista Film Josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Film Josen";
    CardPageId = "Card Film Josen";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the Numere serie field.';
                    ApplicationArea = All;
                }
                field(titolo; Rec.titolo)
                {
                    ToolTip = 'Specifies the value of the Titolo field.';
                    ApplicationArea = All;
                }
                field(Genere; Rec.Genere)
                {
                    ToolTip = 'Specifies the value of the Genere field.';
                    ApplicationArea = All;
                }
                field(Regista; Rec.Regista)
                {
                    ToolTip = 'Specifies the value of the Regista field.';
                    ApplicationArea = All;
                }
                field(Attori; Rec.Attori)
                {
                    ToolTip = 'Specifies the value of the Attori field.';
                    ApplicationArea = All;
                }
                field("Data Uscita"; Rec."Data Uscita")
                {
                    ToolTip = 'Specifies the value of the Data Uscita field.';
                    ApplicationArea = All;
                }
                field(Nazione; Rec.Nazione)
                {
                    ToolTip = 'Specifies the value of the Nazione field.';
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {

    }
}