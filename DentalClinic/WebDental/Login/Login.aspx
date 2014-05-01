<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSwift.Login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="ForumTitle">
         Login</h1>
    <hr />
    <p>
        <div id="dvPostsContainer">
            <div id="dvAddNewPost" style="border: solid 1px #44525E; margin-top: 20px;">

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; "></div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Username:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox></div>
                                        <div style="float:left; margin-left:20px; "><asp:label ID="lblerrorUserName" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <%-- <div style="float:left; margin-left:20px; "><asp:RequiredFieldValidator ID="rfvRegNumber" runat="server" ControlToValidate="txtRegNo" Display="Dynamic" CssClass="Required" ErrorMessage="Enter vehicle registration number" SetFocusOnError="true"></asp:RequiredFieldValidator></div>--%>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Password:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox></div>
                                        <div style="float:left; margin-left:20px; "><asp:label ID="lblerrorPassword" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <%-- <div style="float:left; margin-left:20px; "><asp:RequiredFieldValidator ID="rfvRegNumber" runat="server" ControlToValidate="txtRegNo" Display="Dynamic" CssClass="Required" ErrorMessage="Enter vehicle registration number" SetFocusOnError="true"></asp:RequiredFieldValidator></div>--%>
                    <div style="clear:left;">&nbsp;</div>
                                        <div style="clear: both;">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" 
                            CausesValidation="true" onclick="btnLogin_Click" />&nbsp;&nbsp;&nbsp;

                    </div>

                </div>
                                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorLogin" runat="server" CssClass="Required" Text=""></asp:label></div>
            </div>
        </div>
        <br />
        <br />
        <br />
    </p>
</asp:Content>