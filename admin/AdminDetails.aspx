<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="AdminDetails.aspx.vb" Inherits="admin_AdminDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
       <div class="deleted"><asp:Label ID="lbl_deletedname" runat="server" Text-align="center"></asp:Label></div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="Sql_detail" CssClass="cssformview">
            <EditItemTemplate>
                <table>
                   
                   <tr>
                       <td class="title">*Name:</td>
                       <td class="cell"><asp:TextBox ID="name_TextBox" runat="server" Text='<%# Bind("name") %>' /></td>
                       <td class="validationError"><asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="  *Please Enter Information" ControlToValidate="name_TextBox"></asp:RequiredFieldValidator></td>
                       
                   </tr>
                     <tr>
                       <td class="title">*Nationality:</td>
                       <td class="cell"><asp:TextBox ID="nationality_TextBox" runat="server" Text='<%# Bind("nationality") %>' /></td>
                       <td class="validationError"><asp:RequiredFieldValidator ID="rfv_nationality" runat="server" ErrorMessage="  *Please Enter Information" ControlToValidate="nationality_TextBox"></asp:RequiredFieldValidator></td>

                   </tr>

                    <tr>
                       <td class="title">*Team Name:</td>
                       <td class="cell"><asp:TextBox ID="team_name_TextBox" runat="server" Text='<%# Bind("team_name") %>' /></td>
                       <td class="validationError"><asp:RequiredFieldValidator ID="rfv_team" runat="server" ErrorMessage="  *Please Enter Information" ControlToValidate="team_name_TextBox"></asp:RequiredFieldValidator></td>

                   </tr>

                     <tr>
                       <td class="title">*Date of Birth:</td>
                       <td class="cell"><asp:TextBox ID="date_of_birth_TextBox" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                       <td class="validationError"><asp:RequiredFieldValidator ID="rfv_birth" runat="server" ErrorMessage="  *Please Enter Valid Date" ControlToValidate="date_of_birth_TextBox"></asp:RequiredFieldValidator></td>
                   </tr>

                    <tr>
                       <td class="title">Highest Race Finish (number):</td>
                       <td class="cell"><asp:TextBox ID="highest_race_finish_TextBox" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Highest Grid Position(number):</td>
                       <td class="cell"> <asp:TextBox ID="highest_grid_position_TextBox" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                     <tr>
                       <td class="title">Other:</td>
                       <td class="cell"><asp:TextBox ID="other_TextBox" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>
                    <br />
                    <br />
                    <div class="button">
                     <tr>
                       <td><asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                       <td><asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                   </tr></div>
                </table>
  
            </EditItemTemplate>
 
            <ItemTemplate>

                 
                   <tr>
                       <td class="title">*Name:</td>
                       <td class="cell"><asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' /></td>
                     

                   </tr>
                     <tr>
                       <td class="title">*Nationality:</td>
                       <td class="cell"><asp:label ID="nationalityLabel" runat="server" Text='<%# Bind("nationality") %>' /></td>
                      

                   </tr>

                    <tr>
                       <td class="title">*Team Name:</td>
                       <td class="cell"><asp:Label ID="team_nameLabel" runat="server" Text='<%# Bind("team_name")%>' /></td>
                       
                   </tr>

                     <tr>
                       <td class="title">*Date of Birth:</td>
                       <td class="cell"><asp:Label ID="date_of_birthLabel" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                       
                   </tr>

                    <tr>
                       <td class="title">Highest Race Finish(number):</td>
                       <td class="cell"><asp:Label ID="highest_race_finishLabel" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Highest Grid Position(number):</td>
                       <td class="cell">  <asp:Label ID="highest_grid_positionLabel" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                     <tr>
                       <td class="title">Other:</td>
                       <td class="cell"> <asp:Label ID="otherLabel" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>
                <br />
                <br />
                   <div class="button">
                     <tr>
                       <td><asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                       <td><asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                   </tr>
                       </div>
                </table>

            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />

</asp:Content>

