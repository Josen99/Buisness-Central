report 50190 "Friends Report Josen"
{
    UsageCategory = ReportsAndAnalysis; //permette di trovarlo nella barra ricerca / vede se è localizzato nel gruppo specifico
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Report';
    RDLCLayout = './Src/Layouts/Friends.rdl';
    UseRequestPage = false;
    dataset
    {
        dataitem(Friends; FriendsJosen)
        {
            DataItemTableView = sorting("Surname", "Name") order(ascending);
            column(Birth; Birth)
            {
            }
            column(CAP; CAP)
            {
            }


            column(MinAmount_Friends; MinAmount)
            {
            }
            column(Name; Name)
            {
            }
            column(No_; "No.")
            {
            }
            column(Season; Season)
            {
            }
            column(Surname; Surname)
            {
            }
            column(Total_Amount; "Total Amount")
            {
            }
        }
    }
}
