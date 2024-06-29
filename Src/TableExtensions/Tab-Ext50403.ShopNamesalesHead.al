tableextension 50403 "ShopName_salesHead" extends "Sales Header"
{

    fields
    {

        field(50403; "Shop Name"; Text[150])
        {
           DataClassification = ToBeClassified;


            //  FieldClass = flowfield;
            // CalcFormula = lookup(Customer."Shop Name" where("No." = field("Sell-to Customer No.")));
        }


    }

}
// codeunit 50515 MyCodeunit
// {
//     [EventSubscriber(ObjectType::Table,Database::"Sales Header",'OnBeforeCheckCreditLimit','',false,false)]
//     local procedure OnBeforeCheckCreditLimit(var SalesHeader: Record "Sales Header";var IsHandled: Boolean)
//     begin
        
//     end;
// }

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