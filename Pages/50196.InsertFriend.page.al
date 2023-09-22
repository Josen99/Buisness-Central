page 50196 "Insert Friend Josen"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(myNo; No)
                {
                    ApplicationArea = All;
                }
                field(myName; name)
                {
                    ApplicationArea = All;
                }
                field(mySurname; surname)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(InsertFriend)
            {


                trigger OnAction()
                var
                    myInt: Integer;
                    myFriends: record "FriendsJosen";
                begin
                    myFriends.Init();
                    myFriends."No." := No;
                    myFriends.Name := name;
                    myFriends.Surname := surname;
                    if (myFriends.Insert(true)) then begin
                        Message('Inserimento completato');
                    end else begin
                        Message('Error');
                    end;
                end;
            }
        }
    }
    var
        No: Code[50];
        name: Code[100];
        surname: Code[100];
}