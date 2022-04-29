using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace PL
{
    public partial class ViewAll_Supplier : Page
    {
        SupplierHandler supplierHandler = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            supplierHandler = new SupplierHandler();
            if (IsPostBack == false)
            {
                BindData();
            }
        }
        private void BindData()
        {
            List<Supplier> supplier = supplierHandler.ListSupplier();
            gvSupplierData.DataSource = supplier;
            gvSupplierData.DataBind();
        }
        protected void gvSupplierData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSupplierData.EditIndex = -1;
            BindData();
        }
        protected void gvSupplierData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSupplierData.EditIndex = e.NewEditIndex;
            BindData();
        }
        protected void gvSupplierData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = gvSupplierData.Rows[e.RowIndex].FindControl("lblID") as Label;
            TextBox txtCompanyName = gvSupplierData.Rows[e.RowIndex].FindControl("txtCompanyName") as TextBox;
            TextBox txtContactName = gvSupplierData.Rows[e.RowIndex].FindControl("txtContactName") as TextBox;
            TextBox txtContactTitle = gvSupplierData.Rows[e.RowIndex].FindControl("txtContactTitle") as TextBox;
            TextBox txtAddress = gvSupplierData.Rows[e.RowIndex].FindControl("txtAddress") as TextBox;
            TextBox txtCity = gvSupplierData.Rows[e.RowIndex].FindControl("txtCity") as TextBox;
            TextBox txtRegion = gvSupplierData.Rows[e.RowIndex].FindControl("txtRegion") as TextBox;
            TextBox txtPostalCode = gvSupplierData.Rows[e.RowIndex].FindControl("txtPostalCode") as TextBox;
            TextBox txtCountry = gvSupplierData.Rows[e.RowIndex].FindControl("txtCountry") as TextBox;
            TextBox txtPhone = gvSupplierData.Rows[e.RowIndex].FindControl("txtPhone") as TextBox;
            TextBox txtFax = gvSupplierData.Rows[e.RowIndex].FindControl("txtFax") as TextBox;
            TextBox txtHomePage = gvSupplierData.Rows[e.RowIndex].FindControl("txtHomePage") as TextBox;

            if (lblID != null && txtCompanyName != null && txtContactName != null && txtContactName != null && txtContactTitle != null && txtAddress != null && txtCity != null && txtRegion != null && txtPostalCode != null && txtCountry != null && txtPhone != null && txtFax != null && txtHomePage != null)
            {

                Supplier supplier = new Supplier();
                supplier.SupplierID = Convert.ToInt32(lblID.Text.Trim());
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

                supplierHandler = new SupplierHandler();
                if (supplierHandler.AddSupplier(supplier) == true)
                {
                    lblResult.Visible = true;
                    lblResult.Text = "Record Updated!!";
                }
                else
                {
                    lblResult.Visible = true;
                    lblResult.Text = "Failed to Update Record!!";
                }
                gvSupplierData.EditIndex = -1;
                BindData();
            }
        }
        protected void gvSupplierData_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}