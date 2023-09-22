page 50197 "Pets List Josen"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Pets Table Josen";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Owner; Rec.Owner)
                {
                    ToolTip = 'Specifies the value of the Owner field.';
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ToolTip = 'Specifies the value of the Owner Name field.';
                }
                field("Pets Type"; Rec."Pets Type")
                {
                    ToolTip = 'Specifies the value of the Pets Type field.';
                }
            }
        }

    }


}