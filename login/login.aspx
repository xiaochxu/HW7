<%@ Page Title="" Language="VB" MasterPageFile="~/f1.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div >
        Hi Mike, to Login,Please use Username:<span class="passsword"> mikec</span>&nbsp;&nbsp; Password: <span class="password">pAssw0rd!! 
          <br />
          </span>
          <br />
        <asp:Login ID="Login1" runat="server" >
        </asp:Login>
    
    </div>


</asp:Content>

