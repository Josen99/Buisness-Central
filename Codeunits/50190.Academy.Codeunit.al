codeunit 50190 "Josen Codeunit1"
{
    trigger OnRun()
    begin
    end;

    procedure BankTransactionCounter(friendCode: Code[20]): Integer;
    var
        myBankTransaction: Record "Bank Transaction Josen";
        myResult: Integer;
    begin
        myBankTransaction.Reset();
        myBankTransaction.SetFilter("Friend No.", friendCode);
        myBankTransaction.SetFilter(Amount, '100');
        myResult := myBankTransaction.Count;
        exit(myResult);
    end;
}