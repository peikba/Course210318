report 123456700 "Customer List"
{
    UsageCategory=ReportsAndAnalysis;
    Caption='Customer List';
    //RDLCLayout='./Reports/CustomerList.rdl';

    dataset
    {
        dataitem(Customer;Customer)
        {
            column(No_;"No.")
            {
                IncludeCaption=true;
                
            }
            column(Name;Name)
            {
                IncludeCaption=true;
            }
            column(Name2;"Name 2")
            {
                IncludeCaption=true;
            }
            column(City;City)
            {
                IncludeCaption=true;
            }
            column(Last_Date_Modified;"Last Date Modified")
            {
                IncludeCaption=true;
            }
            column(Balance__LCY_;"Balance (LCY)")
            {
                IncludeCaption=true;
            }
        }
        dataitem("Company Information";"Company Information")
        {
            column(Picture;Picture)
            {
                
            }
            column(CompanyName;CompanyName)
            {

            }
        }
    }    
}