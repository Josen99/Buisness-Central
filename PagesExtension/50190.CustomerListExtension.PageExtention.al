pageextension 50190 "Customer list extension" extends "Customer List"
{
    layout
    {
        addbefore(Contact)
        {
            field(X; Rec.X)
            {
                ApplicationArea = All;
            }
        }  // Add changes to page layout here
    }

}