page 50193 "Region list Josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = RegionJ;
    Caption = 'Region list Josen';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Regione; Rec.Regione)
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