<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="ToolDataSource" runat="server"  
            ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [xiaochxu_hw7] WHERE [id] = @id" InsertCommand="INSERT INTO [xiaochxu_hw7] ([name], [nationality], [team_name], [date_of_birth], [highest_race_finish], [highest_grid_position], [other]) VALUES (@name, @nationality, @team_name, @date_of_birth, @highest_race_finish, @highest_grid_position, @other)" SelectCommand="SELECT * FROM [xiaochxu_hw7]" UpdateCommand="UPDATE [xiaochxu_hw7] SET [name] = @name, [nationality] = @nationality, [team_name] = @team_name, [date_of_birth] = @date_of_birth, [highest_race_finish] = @highest_race_finish, [highest_grid_position] = @highest_grid_position, [other] = @other WHERE [id] = @id">
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
        <div class="search">Search for a driver by name:  <asp:TextBox ID="tbTool" runat="server"></asp:TextBox></div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ToolDataSource" cssClass="cssgridview" Width="816px"  AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
                <asp:BoundField DataField="team_name" HeaderText="Team Name" SortExpression="team_name" />
                <asp:BoundField DataField="date_of_birth" HeaderText="Date of birth" SortExpression="date_of_birth" />
                <asp:BoundField DataField="highest_race_finish" HeaderText="Highest Race Finish" SortExpression="highest_race_finish" />
                <asp:BoundField DataField="highest_grid_position" HeaderText="Highest Grid Position" SortExpression="highest_grid_position" />
                <asp:BoundField DataField="other" HeaderText="Other" SortExpression="other" />
            </Columns>
        </asp:GridView>

</asp:Content>

