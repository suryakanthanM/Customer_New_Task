pageextension 50409 postinvoice extends "Posted Sales Invoices"
{
    layout
    {
        addafter(Corrective)
        {
            field("Shop Name"; Rec."Shop Name")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}