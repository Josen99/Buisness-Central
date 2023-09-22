page 50191 "Friends Josen Card"
{
    PageType = Card;
    ApplicationArea = All;// persone che possono vedere la mia pagina
    //UsageCategory = Administration;
    SourceTable = FriendsJosen;
    Caption = 'Friends Josen Card';



    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Surname"; Rec."Surname")
                {
                    ApplicationArea = All;
                }
                field("Birth"; Rec."Birth")
                {
                    ApplicationArea = All;
                }
                field("CAP"; Rec."CAP")
                {
                    ApplicationArea = All;
                }

            }
            part("Pets Subform"; "Pets Subform Josen")
            {
                SubPageLink = Owner = field("No.");
            }
        }
        area(FactBoxes)
        {
            part(FactBox1; "Season card page")
            {
                SubPageLink = "No." = field("No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(FirstTestAction)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    //     myBankTransaction: Record "Bank Transaction Josen";
                    //   QRecord: Integer;
                    myCodeunit: Codeunit "Josen Codeunit1";
                    QRecord: Integer;
                begin
                    Message('ciao');
                    //   myBankTransaction.Reset();
                    // myBankTransaction.SetFilter("Entity No.", Rec."No.");
                    //QRecord := myBankTransaction.Count();
                    //  Message(Format(QRecord));
                    myCodeunit.BankTransactionCounter(Rec."No.");
                end;

            }
            action(ShowTotalAmount)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                     
                end;
            }
        }
    }


}