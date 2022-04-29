using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Windows.Forms;

namespace PL
{
    public partial class Add_Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSupplier_Click(object sender, EventArgs e)
        {
            Supplier supplier = new Supplier();
            supplier.CompanyName = txtCompanyName.Text; 
            supplier.ContactName = txtContactName.Text;
            supplier.ContactTitle = txtContactTitle.Text;
            supplier.Address = txtAddress.Text;
            supplier.City = txtCity.Text;
            supplier.Region = txtRegion.Text;
            supplier.PostalCode = txtPostalCode.Text;
            supplier.Country = txtCountry.Text;
            supplier.Phone = txtPhone.Text;
            supplier.Fax = txtFax.Text;
            supplier.HomePage = txtHomePage.Text;
            
            SupplierHandler handler = new SupplierHandler();

            if (handler.AddSupplier(supplier) == true)
            {
                lblResult.Visible = true;
                lblResult.Text = "Record Updated Successfully";
                Response.Redirect("ViewAll Supplier.aspx");
            }
        }

        protected void btnCanel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAll Supplier.aspx");
        }
    }
}