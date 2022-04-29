<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Supplier.aspx.cs" Inherits="PL.Add_Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="max-w-5xl mx-auto px-2 sm:px-3 lg:px-3">
     <nav class="bg-gray-300 flex-1 flex items-center justify-center sm:items-stretch sm:justify-center max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
        <div class="flex space-x-4">
            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
            <a href="ViewAll Supplier.aspx" class="text-gray-500 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">ViewAll Supplier</a>
            <a href="Add Supplier" class="bg-gray-700 text-white px-3 py-2 rounded-md text-sm font-medium" aria-current="page">Add Supplier</a>
            <a href="Search Supplier.aspx" class="text-gray-500 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Search Supplier</a>
        </div>
    </nav>
    <br/>
        <div>
            <img class="mx-auto h-12 w-20" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="AddSupplier"/>
            <h2 class="font-serif font-family: Times New Roman mt-6 text-center text-3xl font-extrabold text-gray-900">Add a New Supplier</h2>
        </div>
        <div>
          <asp:Label ID="Label1" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Company Name"></asp:Label>
        <asp:TextBox ID="txtCompanyName" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black" runat="server"></asp:TextBox>
        </div><br />
        <div>
          <asp:Label ID="Label11" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Contact Name"></asp:Label>
        <asp:TextBox ID="txtContactName" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black" runat="server"></asp:TextBox>
        </div><br />
        <div>
          <asp:Label ID="Label2" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Contact Title"></asp:Label>
          <asp:TextBox ID="txtContactTitle" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label3" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Address"></asp:Label>
          <asp:TextBox ID="txtAddress" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label4" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="City"></asp:Label>
          <asp:TextBox ID="txtCity" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label5" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Region"></asp:Label>
          <asp:TextBox ID="txtRegion" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label6" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="PostalCode"></asp:Label>
          <asp:TextBox ID="txtPostalCode" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label7" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Country"></asp:Label>
          <asp:TextBox ID="txtCountry" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label8" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Phone"></asp:Label>
          <asp:TextBox ID="txtPhone" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
         <div>
          <asp:Label ID="Label9" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Fax"></asp:Label>
          <asp:TextBox ID="txtFax" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
          <div>
          <asp:Label ID="Label10" runat="server" ControlStyle-CssClass="font-serif font-family: Times New Roman" Text="Home Page"></asp:Label>
          <asp:TextBox ID="txtHomePage" type="text" ControlStyle-CssClass ="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" Style="border-color: black; top: 1px; left: 0px;" runat="server"></asp:TextBox>
        </div><br />
        <div>
          <asp:Button ID="btnAddSupplier" runat="server" ControlStyle-CssClass ="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" Style="border-radius: 9999px" Text="Add New Supplier" OnClick="btnAddSupplier_Click" /><br />
          <asp:Label ID="lblResult" runat="server" visible="false" style="color:green;" Text="New Supplier Added Successfully!"/>
        </div>
        <div>
          <asp:Button ID="btnCancel" runat="server" ControlStyle-CssClass ="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" Style="border-radius: 9999px" Text="Cancel" OnClick="btnCanel_Click" /><br />
          <asp:Label ID="lblCancel" runat="server" visible="false" style="color:green;" Text="No new Supplier Added!"/>
        </div>
    </div>
    </form>
</body>
</html>
