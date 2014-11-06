<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aAdminInsert.aspx.vb" Inherits="admin_AdminInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_admin_insert" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [xiaochxu_hw7] WHERE [id] = @id" InsertCommand="INSERT INTO [xiaochxu_hw7] ([name], [nationality], [team_name], [date_of_birth], [highest_race_finish], [highest_grid_position], [other]) VALUES (@name, @nationality, @team_name, @date_of_birth, @highest_race_finish, @highest_grid_position, @other)" SelectCommand="SELECT * FROM [xiaochxu_hw7]" UpdateCommand="UPDATE [xiaochxu_hw7] SET [name] = @name, [nationality] = @nationality, [team_name] = @team_name, [date_of_birth] = @date_of_birth, [highest_race_finish] = @highest_race_finish, [highest_grid_position] = @highest_grid_position, [other] = @other WHERE [id] = @id">
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
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="Sql_admin_insert" DefaultMode="Insert">
          
            <InsertItemTemplate>
                <table>
                   
                   <tr>
                       <td class="title">Name:</td>
                       <td class="cell"><asp:TextBox ID="name_TextBox" runat="server" Text='<%# Bind("name") %>' /></td>
                   </tr>
                     <tr>
                       <td class="title">Nationality:</td>
                       <td class="cell"><asp:TextBox ID="nationality_TextBox" runat="server" Text='<%# Bind("nationality") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Team Name:</td>
                       <td class="cell"><asp:TextBox ID="team_name_TextBox" runat="server" Text='<%# Bind("team_name") %>' /></td>
                   </tr>

                     <tr>
                       <td class="title">Date of Birth:</td>
                       <td class="cell"><asp:TextBox ID="date_of_birth_TextBox" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                   </tr>

                   <tr>
                       <td class="title">Highest Race Finish:</td>
                       <td class="cell"><asp:TextBox ID="highest_race_finish_TextBox" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                   <tr>
                       <td class="title">Highest Grid Position:</td>
                       <td class="cell"> <asp:TextBox ID="highest_grid_position_TextBox" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                   <tr>
                       <td class="title">Other:</td>
                       <td class="cell"><asp:TextBox ID="other_TextBox" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>

                    <br />

                    <div class="button">
                   <tr>
                       <td> <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" /></td>
                       <td><asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                   </tr>

                        </div>
                </table>
                
            
            </InsertItemTemplate>
           
        </asp:FormView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
