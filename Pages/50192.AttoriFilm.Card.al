page 50192 "Card Attori Josen"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Attori Josen";
    CardPageId = "Card Registi Josen";

    layout
    {
        area(Content)
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
                ToolTip = 'Specifies the value of the Nazzione field.';
                TableRelation = "Country/Region";
            }
            group(GroupName)
            {

            }
        }
    }



    var
        myInt: Integer;
}