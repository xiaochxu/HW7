<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <asp:SqlDataSource ID="Sql_detail" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" 
          SelectCommand="SELECT * FROM [xiaochxu_hw7] WHERE ([id] = @id)" 
           >
           
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" CssClass="cssformview" DataSourceID="Sql_detail">
            <EditItemTemplate>
         
            </EditItemTemplate>
 
            <ItemTemplate>

                 
                   <tr>
                       <td class="title">Name:</td>
                       <td class="cell"><asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' /></td>
                   </tr>
                     <tr>
                       <td class="title">Nationality:</td>
                       <td class="cell"><asp:label ID="nationalityLabel" runat="server" Text='<%# Bind("nationality") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Team Name:</td>
                       <td class="cell"><asp:Label ID="team_nameLabel" runat="server" Text='<%# Bind("team_name")%>' /></td>
                   </tr>

                     <tr>
                       <td class="title">Date of Birth:</td>
                       <td class="cell"><asp:Label ID="date_of_birthLabel" runat="server" Text='<%# Bind("date_of_birth") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Highest Race Finish:</td>
                       <td class="cell"><asp:Label ID="highest_race_finishLabel" runat="server" Text='<%# Bind("highest_race_finish") %>' /></td>
                   </tr>

                    <tr>
                       <td class="title">Highest Grid Position:</td>
                       <td class="cell">  <asp:Label ID="highest_grid_positionLabel" runat="server" Text='<%# Bind("highest_grid_position") %>' /></td>
                   </tr>

                     <tr>
                       <td class="title">Other:</td>
                       <td class="cell"> <asp:Label ID="otherLabel" runat="server" Text='<%# Bind("other") %>' /></td>
                   </tr>

                  
                </table>

            </ItemTemplate>
        </asp:FormView>

</asp:Content>

