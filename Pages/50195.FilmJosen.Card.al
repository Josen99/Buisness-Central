page 50195 "Card Film Josen"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Film Josen";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the Numere serie field.';
                }
                field(titolo; Rec.titolo)
                {
                    ToolTip = 'Specifies the value of the Titolo field.';
                }
                field(Genere; Rec.Genere)
                {
                    ToolTip = 'Specifies the value of the Genere field.';
                }
                field(Regista; Rec.Regista)
                {
                    ToolTip = 'Specifies the value of the Regista field.';
                }
                field(Attori; Rec.Attori)
                {
                    ToolTip = 'Specifies the value of the Attori field.';
                }
                field("Data Uscita"; Rec."Data Uscita")
                {
                    ToolTip = 'Specifies the value of the Data Uscita field.';
                }
                field(Nazione; Rec.Nazione)
                {
                    ToolTip = 'Specifies the value of the Nazione field.';
                }
                field("ActorCount"; ActorCount)
                {
                    ToolTip = 'Numero attori';
                    Editable = true;
                }

            }

            part("Attori Film"; "Sub Attori Film List josen")
            {
                SubPageLink = "Film" = field("No.");

            }

        }
    }

    actions
    {
        area(Navigation)
        {
            action("ExportReport")
            {

                trigger OnAction()
                var
                    CurrentRecord: Record "Film Josen";

                begin
                    CurrentRecord := Rec;
                    CurrentRecord.SetRecFilter;
                    Report.Run(50190, true, true, CurrentRecord);
                end;
            }

        }

    }
    trigger OnOpenPage()

    begin
        CurrTable.Reset();
        // CurrTable.SetFilter(Film, Rec."No.");
        ActorCount := CurrTable.Count;
    end;

    var
        CurrTable: Record "Film e Attori Josen";
        ActorCount: Integer;
}