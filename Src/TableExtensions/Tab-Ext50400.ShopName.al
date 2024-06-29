tableextension 50400 "Shop Name" extends Customer
{
    fields
    {
        field(50400; "Shop Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            // FieldClass = flowfield;

            // CalcFormula = lookup(Customer."Shop Name" where("No." = field("Shop Name")));

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

codeunit 50411 Customer_Subscribe
{
    // [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnValidateSellToCustomerNoOnBeforeValidateLocationCode', '', false, false)]
    // local procedure OnValidateSellToCustomerNoOnBeforeValidateLocationCode(var SalesHeader: Record "Sales Header"; var Cust: Record Customer; var IsHandled: Boolean)

    // begin
    //     SalesHeader."Shop Name" := Cust."Shop Name";
    //     SalesHeader.Modify();

    // end;

    [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnValidateSellToCustomerNoOnBeforeCheckBlockedCustOnDocs', '', false, false)]
    local procedure OnValidateSellToCustomerNoOnBeforeCheckBlockedCustOnDocs(var SalesHeader: Record "Sales Header"; var Cust: Record Customer; var IsHandled: Boolean)

    begin
        SalesHeader."Shop Name" := Cust."Shop Name";
        SalesHeader.Modify();

    end;

    // [EventSubscriber(ObjectType::Table, database::"Sales Invoice Header", 'OnBeforeCheckNoPrinted', '', false, false)]
    // local procedure OnBeforeCheckNoPrinted(var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)

    // Var
    //     Cust: Record Customer;
    // begin
    //     SalesInvoiceHeader."Shop Name" := Cust."Shop Name";
    // end;
}