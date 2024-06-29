pageextension 50406 SalesOrder extends "Sales Order"
{
    
       layout
    {
        addlast(general)
        {
            field("Shop Name"; Rec."Shop Name")
            {
                ApplicationArea = All;
               
                
                
            }
        }
    }

    
}

