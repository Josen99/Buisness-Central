tableextension 50190 CustomerExtension extends Customer
{
    fields
    {
        field(51001; X; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'X';
            InitValue = false;
            Editable = false;
        }
    }

}