<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Authors.aspx.cs" Inherits="TimeTracker.Authors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div>
    
    <table cellpadding="5" cellspacing="5" border="0">
        <tr>
            <td class="style1">Active Authors</td>
        </tr>
         <tr>
             <td class="style2"> 
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AuthorsSDS">
                     <Columns>
                         <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                         <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                         <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                         <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                         <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                         <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                         <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                         <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="AuthorsSDS" runat="server" ConnectionString="<%$ ConnectionStrings:myDatabaseConnectionString %>" SelectCommand="getActiveAuthors" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
             </td>
        </tr>

           <tr>
            <td class="style1">Insert new Author</td>
        </tr>
         <tr>
             <td class="style2"> FirstName:&nbsp;
                 <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                 <br />
                 LastName:&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                 <br />
                 <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                 <asp:Label ID="Label1" runat="server" ></asp:Label>
             </td>
        </tr>
    </table>

        
    </div>
 
</asp:Content>
