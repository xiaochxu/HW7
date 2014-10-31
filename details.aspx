<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_detail" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" 
          SelectCommand="SELECT * FROM [xiaochxu_hw7] WHERE ([id] = @id)" 
           >
           
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="Sql_detail">
            <EditItemTemplate>
         
            </EditItemTemplate>
 
            <ItemTemplate>

                 
                   <tr>
                       <td>Name:</td>
                       <td><asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' /></td>
                   </tr>
                     <tr>
                       <td>Nationality:</td>
                       <td><asp:label ID="nationalityLabel" runat="server" Text='<%# Bind("nationality") %>' /></td>
                   </tr>

                    <tr>
                       <td>Team Name:</td>
                       <td><asp:Label ID="team_nameLabel" runat="server" Text='<%# Bind("team_name")%>' /></td>
                   </tr>

                     <tr>
                       <td>Date of Birth:</td>
                       <td><asp:Label ID="date_of_birthLabel" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                   </tr>

                    <tr>
                       <td>Highest Race Finish:</td>
                       <td><asp:Label ID="highest_race_finishLabel" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                    <tr>
                       <td>Highest Grid Position:</td>
                       <td>  <asp:Label ID="highest_grid_positionLabel" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                     <tr>
                       <td>Other:</td>
                       <td> <asp:Label ID="otherLabel" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>

                  
                </table>

            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
