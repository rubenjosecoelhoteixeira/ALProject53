xmlport 50000 ImportCustomer
{
    Direction = Import;
    Format = VariableText;
    FieldSeparator = ';';

    schema
    {
        textelement(NodeName1)
        {
            tableelement(Customer; Customer)
            {
                fieldattribute(No; Customer."No.")
                {

                }
                fieldattribute(Name; Customer.Name)
                {

                }
            }
        }
    }
}