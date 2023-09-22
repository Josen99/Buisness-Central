page 50194 "Card Registi Josen"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Regista Josen";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the NO. field.';
                }
                field(Nome; Rec.Nome)
                {
                    ToolTip = 'Specifies the value of the Nome field.';
                }
                field(Cognome; Rec.Cognome)
                {
                    ToolTip = 'Specifies the value of the Cognome field.';
                }
                field(Nazione; Rec.Nazione)
                {
                    ToolTip = 'Specifies the value of the Nazione field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}