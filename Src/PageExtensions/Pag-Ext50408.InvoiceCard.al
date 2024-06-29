pageextension 50408 InvoiceCard extends "Posted Sales Invoice"
{
    layout
    {
        addlast(general){
            field("Shop Name";Rec."Shop Name"){
                ApplicationArea=All;
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