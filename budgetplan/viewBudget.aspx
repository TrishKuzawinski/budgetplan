<%@ Page Title="View Budget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewBudget.aspx.cs" Inherits="budget_planner.viewBudget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h2><%: Title %>.</h2>
    <a href="createBudget.aspx">Add Item.</a>

    <h4>View all the items you've added down below!</h4>
    <asp:GridView ID="grdBudgetItems" runat="server" CssClass="table table-striped table-hover"
        AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="Income" HeaderText="Income" />
            <asp:BoundField DataField="BudgetedAmount" HeaderText="Budgeted Amount" />
            <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount" />
            <asp:BoundField DataField="Balance" HeaderText="Balance" />
            <asp:BoundField DataField="Total" HeaderText="Total" />
        </Columns>
    </asp:GridView>
</asp:Content>
