reportextension 50412 CustReport extends "Standard Sales - Invoice"
{

    dataset
    {
        add("Header")
        {
            Column(Shop_Name; "Shop Name")
            {

            }

        }


    }
    rendering
    {
        layout(Shop_Name)
        {
            Type = RDLC;
            LayoutFile = 'StandardSalesInvoice.rdl';
        }
    }
}
