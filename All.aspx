<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="All.aspx.vb" Inherits="All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    F1 -View All Drivers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="Sql_default" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [xiaochxu_hw7] WHERE [id] = @id" InsertCommand="INSERT INTO [xiaochxu_hw7] ([name], [nationality], [team_name], [date_of_birth], [highest_race_finish], [highest_grid_position], [other]) VALUES (@name, @nationality, @team_name, @date_of_birth, @highest_race_finish, @highest_grid_position, @other)" SelectCommand="SELECT * FROM [xiaochxu_hw7]" UpdateCommand="UPDATE [xiaochxu_hw7] SET [name] = @name, [nationality] = @nationality, [team_name] = @team_name, [date_of_birth] = @date_of_birth, [highest_race_finish] = @highest_race_finish, [highest_grid_position] = @highest_grid_position, [other] = @other WHERE [id] = @id">
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
        <asp:GridView ID="GridView1" runat="server"  cssClass="cssgridview"  AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Sql_default">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
                <asp:BoundField DataField="team_name" HeaderText="Team Name" SortExpression="team_name" />
                <asp:BoundField DataField="date_of_birth" HeaderText="Date of Birth" SortExpression="date_of_birth" />
                <asp:HyperLinkField Text="View Details" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="details.aspx?id={0}" />
            </Columns>
        </asp:GridView>

</asp:Content>

