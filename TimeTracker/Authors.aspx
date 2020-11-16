<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Authors.aspx.cs" Inherits="TimeTracker._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
 
    
    .style1  
    {
        font-size:30px;
        font-family: Arial;
    }
    
    .style2  
    {
        font-size:14px;
        font-family: Arial;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
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
             <td class="style2"> </td>
        </tr>
    </table>

        
    </div>
    </form>
</body>
</html>
