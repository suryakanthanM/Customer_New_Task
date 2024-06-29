pageextension 50414 SalesArchiveList extends "Sales Order Archives"
{
    layout
    {
        addafter("Currency Code")
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

pageextension 50415 SalesArchiveCard extends "Sales Order Archive"
{
    layout
    {
        addlast(General)
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