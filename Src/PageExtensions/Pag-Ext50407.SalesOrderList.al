pageextension 50407 SalesOrderList extends "Sales Order List"
{
    layout
    {
        addAfter("Amount Including VAT"){
            field("Shop Name";Rec."Shop Name"){
                ApplicationArea=All;
            }
        }
    }
}

