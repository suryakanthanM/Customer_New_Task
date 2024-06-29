tableextension 50413 CustLedgEntry extends "Sales Header Archive"
{
    fields
    {
        field(50413; "Shop Name"; Text[100])
        {
            // DataClassification = ToBeClassified;
            FieldClass = flowfield;

            CalcFormula = lookup(Customer."Shop Name" where("No." = field("Sell-to Customer No.")));
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}

//codeunit 50413 SalesHeader_Subscribe
// {

//     [EventSubscriber(ObjectType::Table, database::"Sales Invoice Header", 'OnLookupAppliesToDocNoOnAfterSetFilters', '', false, false)]
//     local procedure OnLookupAppliesToDocNoOnAfterSetFilters(var CustLedgEntry: Record "Cust. Ledger Entry"; SalesInvoiceHeader: Record "Sales Invoice Header")
//     begin
//         SalesInvoiceHeader."Shop Name" := CustLedgEntry."Shop Name";
//         SalesInvoiceHeader.Modify();
//     end;
// }
