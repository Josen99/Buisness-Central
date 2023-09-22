page 50196 "Film e Attori Josen List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Film e Attori Josen";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Attori; Rec.Attori)
                {
                    ToolTip = 'Specifies the value of the Attori field.';
                }
                field(Film; Rec.Film)
                {
                    ToolTip = 'Specifies the value of the Film field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }


}