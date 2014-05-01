<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ARMS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Login</h1><br /><br />

<div style="text-align:center; width:100%;">
<center>
    <table style="width:300px;">
        <tr><td style="width:100px;">User Name: <span class="Required">*</span></td><td  style="width:200px;"><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td></tr>
        <tr><td  style="width:100px;">Password: <span class="Required">*</span></td><td  style="width:200px;"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
        <tr><td colspan="2" style="text-align:center;">
            <asp:Button ID="btnSubmit" runat="server" Text="Login" /><asp:Button ID="btnReset" runat="server" Text="Reset" />
        </td></tr>
    </table>
    </center>
</div>
<br />
<br />
<br />
<br />
<br />
<br /><br />
<br /><br />
<br />
</asp:Content>
