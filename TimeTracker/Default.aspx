<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeTracker._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="EmployeesGV" runat="server" DataSourceID="EmployeesODS" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="EmployeesODS" runat="server" SelectMethod="GetEmployees" TypeName="TimeTracker.Models.TimeTrackerRepository">
    </asp:ObjectDataSource>

    <br />
    <br />
    <asp:GridView ID="TimeCardsGV" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="TimeCardsODS" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="SubmissionDate" HeaderText="Date" SortExpression="SubmissionDate" DataFormatString="{0:MM/dd/yyyy}" />
            <asp:BoundField DataField="MondayHours" HeaderText="Monday" SortExpression="MondayHours" />
            <asp:BoundField DataField="TuesdayHours" HeaderText="Tuesday" SortExpression="TuesdayHours" />
            <asp:BoundField DataField="WednesdayHours" HeaderText="Wednesday" SortExpression="WednesdayHours" />
            <asp:BoundField DataField="ThursdayHours" HeaderText="Thursday" SortExpression="ThursdayHours" />
            <asp:BoundField DataField="FridayHours" HeaderText="Friday" SortExpression="FridayHours" />
            <asp:BoundField DataField="SaturdayHours" HeaderText="Saturday" SortExpression="SaturdayHours" />
            <asp:BoundField DataField="SundayHours" HeaderText="Sunday" SortExpression="SundayHours" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:ObjectDataSource ID="TimeCardsODS" runat="server" SelectMethod="GetEmployeeTimeCards" TypeName="TimeTracker.Models.TimeTrackerRepository">
        <SelectParameters>
            <asp:ControlParameter ControlID="EmployeesGV" DefaultValue="0" Name="employeeId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />

   

</asp:Content>
