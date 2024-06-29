pageextension 50517 ItemExt extends "Item List"
{


    actions
    {
        addbefore(History)
        {

            action(XMLPort_1)
            {
                Caption = 'XmlImort';
                promoted = true;
                PromotedCategory = Process;
                Image = Import;
                ApplicationArea = All;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    xmlport.Run(50518, false, false);
                end;
            }
        }
    }
}

xmlport 50518 ItemXMLport
{
    Format = VariableText;
    Direction = Import;
    UseRequestPage = false;
    TextEncoding = UTF8;
    TableSeparator = '';
    schema
    {
        textelement(Item)
        {
            tableelement(ItemTable; Item)
            {
                fieldattribute(ItemNo; ItemTable."No.")
                {

                }
                fieldattribute(ItemDescription;ItemTable.Description){

                }
                
            }
        }
    }
}