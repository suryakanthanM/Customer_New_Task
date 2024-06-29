pageextension 50410 CustomerLookup extends "Customer Lookup"
{
    layout
    {
        addafter("Salesperson Code")
        {
            field("Shop Name"; Rec."Shop Name")
            {
                ApplicationArea = All;
            }
        }
    }

}

