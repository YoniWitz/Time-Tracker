<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeTracker._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1">
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetEmployees" TypeName="TimeTracker.Models.TimeTrackerRepository">
    </asp:ObjectDataSource>

   

</asp:Content>
