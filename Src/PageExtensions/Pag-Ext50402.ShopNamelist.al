pageextension 50402 "Shop Name_list" extends "Customer List"
{
    layout
    {
        addafter("Payments (LCY)")
        {
            field("Shop Name"; Rec."Shop Name")
            {
                ApplicationArea = All;
            }
        }
    }
}

