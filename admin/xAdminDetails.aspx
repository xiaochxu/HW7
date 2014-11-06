<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xAdminDetails.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_detail" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" DeleteCommand="DELETE FROM [xiaochxu_hw7] WHERE [id] = @id" InsertCommand="INSERT INTO [xiaochxu_hw7] ([name], [nationality], [team_name], [date_of_birth], [highest_race_finish], [highest_grid_position], [other]) VALUES (@name, @nationality, @team_name, @date_of_birth, @highest_race_finish, @highest_grid_position, @other)" SelectCommand="SELECT * FROM [xiaochxu_hw7] WHERE ([id] = @id)" UpdateCommand="UPDATE [xiaochxu_hw7] SET [name] = @name, [nationality] = @nationality, [team_name] = @team_name, [date_of_birth] = @date_of_birth, [highest_race_finish] = @highest_race_finish, [highest_grid_position] = @highest_grid_position, [other] = @other WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="team_name" Type="String" />
                <asp:Parameter Name="date_of_birth" Type="String" />
                <asp:Parameter Name="highest_race_finish" Type="Int32" />
                <asp:Parameter Name="highest_grid_position" Type="Int32" />
                <asp:Parameter Name="other" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="team_name" Type="String" />
                <asp:Parameter Name="date_of_birth" Type="String" />
                <asp:Parameter Name="highest_race_finish" Type="Int32" />
                <asp:Parameter Name="highest_grid_position" Type="Int32" />
                <asp:Parameter Name="other" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       <asp:Label ID="lbl_deletedname" runat="server" Text-align="center"></asp:Label>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="Sql_detail">
            <EditItemTemplate>
                <table>
                   
                   <tr>
                       <td>Name:</td>
                       <td><asp:TextBox ID="name_TextBox" runat="server" Text='<%# Bind("name") %>' /></td>
                       <td><asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please Enter Information" ControlToValidate="name_TextBox"></asp:RequiredFieldValidator></td>
                       
                   </tr>
                     <tr>
                       <td>Nationality:</td>
                       <td><asp:TextBox ID="nationality_TextBox" runat="server" Text='<%# Bind("nationality") %>' /></td>
                       <td><asp:RequiredFieldValidator ID="rfv_nationality" runat="server" ErrorMessage="Please Enter Information" ControlToValidate="nationality_TextBox"></asp:RequiredFieldValidator></td>

                   </tr>

                    <tr>
                       <td>Team Name:</td>
                       <td><asp:TextBox ID="team_name_TextBox" runat="server" Text='<%# Bind("team_name") %>' /></td>
                       <td><asp:RequiredFieldValidator ID="rfv_team" runat="server" ErrorMessage="Please Enter Information" ControlToValidate="team_name_TextBox"></asp:RequiredFieldValidator></td>

                   </tr>

                     <tr>
                       <td>Date of Birth:</td>
                       <td><asp:TextBox ID="date_of_birth_TextBox" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                       <td><asp:RequiredFieldValidator ID="rfv_birth" runat="server" ErrorMessage="Please Enter Information" ControlToValidate="date_of_birth_TextBox"></asp:RequiredFieldValidator></td>
                   </tr>

                    <tr>
                       <td>Highest Race Finish:</td>
                       <td><asp:TextBox ID="highest_race_finish_TextBox" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                    <tr>
                       <td>Highest Grid Position:</td>
                       <td> <asp:TextBox ID="highest_grid_position_TextBox" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                     <tr>
                       <td>Other:</td>
                       <td><asp:TextBox ID="other_TextBox" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>

                     <tr>
                       <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                       <td><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                   </tr>
                </table>
  
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

                     <tr>
                       <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                       <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
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
