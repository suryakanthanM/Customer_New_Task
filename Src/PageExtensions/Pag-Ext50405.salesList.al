pageextension 50405 salesList extends "Sales Quotes"
{
    
    layout
    {
        addafter("Quote Valid Until Date"){
            field("Shop Name";Rec."Shop Name"){
                ApplicationArea=All;
            }
        }
    }
}