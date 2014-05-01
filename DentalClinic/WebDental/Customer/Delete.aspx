<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebSwift.Customer.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdnForumID" runat="server" />
    <asp:HiddenField ID="hdnTodaysDate" runat="server" />
    <h1 id="ForumTitle">
        Delete Customer</h1>
    <hr />
    <p>
        <div id="dvPostsContainer">
            <div id="dvAddNewPost" style="border: solid 1px #44525E; margin-top: 20px;">
                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; "> Username</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">UserName:</div>
                    <div style="float:left; width:150px;"><asp:DropDownList ID="lstDelete" runat="server" AutoPostBack="true" Width="100%"></asp:DropDownList></div>
                    <%-- <div style="float:left; margin-left:20px; "><asp:RequiredFieldValidator ID="rfvRegNumber" runat="server" ControlToValidate="txtRegNo" Display="Dynamic" CssClass="Required" ErrorMessage="Enter vehicle registration number" SetFocusOnError="true"></asp:RequiredFieldValidator></div>--%>
                    <div style="clear:left;">&nbsp;</div>
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <%--<div style="font-weight: bold;font-size: 20px; color: #44525E;">Re: University Life</div>--%>
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        </div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="clear: both;">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Customer" 
                            CausesValidation="true" onclick="btnDelete_Click" />&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
    </p>
</asp:Content>