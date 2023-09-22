xmlport 50190 "Friends Josen Xmlport"
{
    Caption = 'XMLPort Friends Josen';
    Format = Xml;
    Direction = Export;
    DefaultFieldsValidation = false;
    schema
    {
        textelement(Friends)
        {
            XmlName = 'Friends';
            tableelement(friend; FriendsJosen)
            {
                XmlName = 'Frienda';
                fieldelement(No; Friend."No.")
                {

                }
                fieldelement(Name; friend.Name)
                {

                }
                fieldelement(Surname; friend.Surname)
                {

                }
            }
        }
    }



}