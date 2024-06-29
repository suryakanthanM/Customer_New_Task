tableextension 50407 Invoice extends "Sales Invoice Header"
{
    fields
    {
        field(50407; "Shop Name"; Text[150])
        {
           // DataClassification = ToBeClassified;
            FieldClass = flowfield;

            CalcFormula = lookup(Customer."Shop Name" where("No." = field("Sell-to Customer No.")));

        }
    }


}

// codeunit 50413 SalesHeader_Subscribe
// {


//     [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeCheckNoAndShowConfirm', '', false, false)]
//     local procedure OnBeforeCheckNoAndShowConfirm(SalesHeader: Record "Sales Header"; var SalesShptHeader: Record "Sales Shipment Header"; var SalesInvHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var ReturnRcptHeader: Record "Return Receipt Header"; var SalesInvHeaderPrePmt: Record "Sales Invoice Header"; var SalesCrMemoHeaderPrePmt: Record "Sales Cr.Memo Header"; SourceCode: Record "Source Code"; var Result: Boolean; var IsHandled: Boolean)
//     begin
//         SalesInvHeader."Shop Name" := SalesHeader."Shop Name";
//         SalesInvHeader.Modify();
//     end;

// }

//codeunit 50413 SalesHeader_Subscribe
//{
// [EventSubscriber(ObjectType::Table, database::"Sales Invoice Header", 'OnBeforeCheckNoPrinted', '', false, false)]
// local procedure OnBeforeCheckNoPrinted(var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
// Var
//     SalesHead: Record "Sales Header";
// begin
//     SalesInvoiceHeader."Shop Name" := SalesHead."Shop Name";
// end;
// [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnAfterConfirmPost', '', false, false)]
// local procedure OnAfterConfirmPost(var SalesHeader: Record "Sales Header")
// Var
//     sales: Record "Sales Invoice Header";

// begin
//     if Sales."Quote No." <> '' then begin
//         if sales.Get(Sales."Quote No.") then begin
//             SalesHeader."Shop Name" := Sales."Shop Name";
//             Sales.Modify(True);
//         end;
//     end;

// end;


// [EventSubscriber(ObjectType::Page, Page::"Posted sales invoice", 'OnBeforeSalesInvHeaderPrintRecords', '', false, false)]
// local procedure OnBeforeSalesInvHeaderPrintRecords(var SalesInvHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
// var
//     SalesHead: Record "Sales Header";
// begin
//     SalesInvHeader."Shop Name" := SalesHead."Shop Name";
// end;
// [EventSubscriber(ObjectType::Table, database::"Sales Invoice Header", 'OnBeforeEmailRecords', '', false, false)]
// local procedure OnBeforeEmailRecords(var ReportSelections: Record "Report Selections"; var SalesInvoiceHeader: Record "Sales Invoice Header"; DocTxt: Text; var ShowDialog: Boolean; var IsHandled: Boolean)
//     begin

//     end;

//}
// codeunit 50413 SalesHeader_Subscribe
// {

//     [Eventsubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnAfterPost', '', false, false)]
//     local procedure OnAfterPost(var SalesHeader: Record "Sales Header"; PostAndSend: Boolean)
//     var
//         Postinv: Record "Sales invoice Header";
//     begin

//         postinv.SetRange("Order No.", SalesHeader."No.");
//         Postinv.FindFirst();
//         Postinv."Shop Name" := SalesHeader."Shop Name";
//         Postinv.Modify();
//     end;

// }

