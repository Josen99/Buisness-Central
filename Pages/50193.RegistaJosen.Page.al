page 50193 "Lista Registi Josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Regista Josen";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the NO. field.';
                    ApplicationArea = All;

                }
                field(Nome; Rec.Nome)
                {
                    ToolTip = 'Specifies the value of the Nome field.';
                    ApplicationArea = All;

                }
                field(Cognome; Rec.Cognome)
                {
                    ToolTip = 'Specifies the value of the Cognome field.';
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
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}