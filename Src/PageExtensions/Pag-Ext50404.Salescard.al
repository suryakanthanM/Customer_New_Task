pageextension 50404 Salescard extends "Sales Quote"
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