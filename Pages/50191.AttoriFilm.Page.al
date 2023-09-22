page 50191 "Lsta Attori Josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Attori Josen";
    CardPageId = "Card Attori Josen";

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
                    ToolTip = 'Specifies the value of the Nazzione field.';
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