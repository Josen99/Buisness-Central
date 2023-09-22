page 50194 "Bank Trnsaction list josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Bank Transaction Josen";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Entity No."; Rec."Entity No.")
                {
                    ApplicationArea = All;

                }
                field("Date"; Rec.Date)
                {
                    ApplicationArea = All;

                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;

                }
                field("Friend No."; Rec."Friend No.")
                {
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