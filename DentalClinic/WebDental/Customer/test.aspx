<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebSwift.Customer.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">test Number:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtCreditCard" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="clear: both;">&nbsp;</div>
                    <div style="clear: both;">
                        <asp:Button ID="Button1" runat="server" Text="test button" 
                            CausesValidation="true" onclick="btnSave_Click" />&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
</asp:Content>
