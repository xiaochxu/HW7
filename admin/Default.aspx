<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Welcome to the Admin page!
     <ul>
                <li><a href="./AdminAll.aspx">View All Drivers & Edit</a></li> 
                <li><a href="./AdminInsert.aspx">Insert A new Driver</a></li> 
                <li><a href="site_mgr/UserMgmt.aspx">Manage Users</a></li> 
                <li> <a href="site_mgr/RoleMgmt.aspx">Manage Roles</a></li>


     </ul>



</asp:Content>

