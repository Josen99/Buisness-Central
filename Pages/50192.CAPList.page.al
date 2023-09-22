page 50192 "CAP List J"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CAPJ;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CAP; Rec."CAP")
                {
                    ApplicationArea = All;
                }
                field(city; Rec."City")
                {
                    ApplicationArea = All;
                }
                field(Regione; Rec."Regione")
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