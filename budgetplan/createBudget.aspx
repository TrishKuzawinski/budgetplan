<%@ Page Title="Create Budget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="createBudget.aspx.cs" Inherits="budget_planner.createBudget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new item to add to your budget plan!</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ItemName" CssClass="col-md-2 control-label">Item Name:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ItemName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ItemName"
                    CssClass="text-danger" ErrorMessage="The item name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Category" CssClass="col-md-2 control-label">Category:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Category" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Category"
                    CssClass="text-danger" ErrorMessage="The category field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Income" CssClass="col-md-2 control-label">Income:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Income" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Income"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The income field is required." />
            </div>
        </div>
                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="BudgetedAmount" CssClass="col-md-2 control-label">Budgeted Amount:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="BudgetedAmount" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="BudgetedAmount"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The budgeted amount field is required." />
            </div>
        </div>
                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PaidAmount" CssClass="col-md-2 control-label">Paid Amount:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PaidAmount" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PaidAmount"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The paid amount field is required." />
            </div>
        </div>
                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Balance" CssClass="col-md-2 control-label">Balance:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Balance" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Balance"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The balance field is required." />
            </div>
        </div>
                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="total" CssClass="col-md-2 control-label">Total:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Total" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Total"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The total field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="AddItem_Click" Text="Add Item" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
