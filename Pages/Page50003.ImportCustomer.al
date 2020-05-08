page 50003 ImportCustomer
{
    PageType = Card;
    Caption = 'Import Customers';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ImportCustomers)
            {
                ApplicationArea = All;
                Caption = 'Import Customers';
                trigger OnAction()
                begin
                    Xmlport.Run(50000, false);
                    Message('Importação feita com sucesso.');
                end;
            }
        }
    }
}