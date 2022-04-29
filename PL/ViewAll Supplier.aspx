<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAll Supplier.aspx.cs" Inherits="PL.ViewAll_Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!--<div class="max-w-2xl mx-auto px-2 sm:px-2 lg:px-2">-->
    <nav class="bg-gray-300 flex-1 flex items-center justify-center sm:items-stretch sm:justify-center max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
        <div class="flex space-x-4">
            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
            <a href="ViewAll Supplier.aspx" class="bg-gray-700 text-white px-3 py-2 rounded-md text-sm font-medium" aria-current="page">ViewAll Supplier</a>
            <a href="Add Supplier.aspx" class="text-gray-500 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Add Supplier</a>
            <a href="Search Supplier.aspx" class="text-gray-500 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Search Supplier</a>
        </div>
    </nav>
    <br/>
        <img class="mx-auto h-12 w-20" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="AddSupplier"/>
        <h2 class="font-serif font-family: Times New Roman mt-6 text-center text-3xl font-extrabold text-gray-900">List Of All Supplier</h2>
    <div style="width: 948px">
            <br />
            <asp:Label ID="lblResult" runat="server" Visible="false" style="color:green;"></asp:Label>
            <br/>
            <asp:GridView ID="gvSupplierData" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CssClass="table table-auto table-hover font-serif font-family: Times New Roman" align-content ="vertical" BackColor="white" BorderColor="#0000CC" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" CellSpacing="2" OnRowCancelingEdit="gvSupplierData_RowCancelingEdit" OnRowEditing="gvSupplierData_RowEditing" OnRowUpdating="gvSupplierData_RowUpdating" OnSelectedIndexChanged="gvSupplierData_SelectedIndexChanged" Width="831px" Height="339px">
            <Columns>
                <asp:TemplateField HeaderText="Supplier ID">
                    <EditItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("SupplierID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SupplierID") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company Name">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact Name">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtContactName" runat="server" Text='<%# Bind("ContactName") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtContactName" runat="server" Text='<%# Bind("ContactName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact Title">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtContactTitle" runat="server" Text='<%# Bind("ContactTitle") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtContactTitle" runat="server" Text='<%# Bind("ContactTitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Region">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtRegion" runat="server" Text='<%# Bind("Region") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtRegion" runat="server" Text='<%# Bind("Region") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PostalCode">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtPostalCode" runat="server" Text='<%# Bind("PostalCode") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtPostalCode" runat="server" Text='<%# Bind("PostalCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtCountry" runat="server" Text='<%# Bind("Country") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtCountry" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fax">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtFax" runat="server" Text='<%# Bind("Fax") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtFax" runat="server" Text='<%# Bind("Fax") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HomePage">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtHomePage" runat="server" Text='<%# Bind("HomePage") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="txtHomePage" runat="server" Text='<%# Bind("HomePage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField ShowHeader="false" Text="Delete" DataNavigateUrlFields="SupplierID" DataNavigateUrlFormatString="Supplier.aspx?id={0}" NavigateUrl="Supplier.aspx" ControlStyle-CssClass ="btn btn-outline-danger "/>
             </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        
    </form>
</body>
</html>
