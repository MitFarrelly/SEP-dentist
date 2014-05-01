<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="WebSwift.Controls.Header" %>
<script language="javascript" type="text/javascript">
    function IsEmpty(input) {
        var strInput = input.toString().replace(" ", "");

        if (strInput == "") {
            return true;
        }
        else {
            return false;
        }
    }

</script>

<div id="dvLogo" class="FloatLeft">
    <img src="../Images/Logo 2.png" alt="Web Swift Auto Repair" border="0" width="115" height="115" onclick="window.location='Index.aspx';" style="cursor:pointer;" />
</div>
<div id="dvHeaderOptions" class="FloatLeft">
    <div style="height:35px; width:100%;">&nbsp;</div>
    <div id="dvHeader-Search">
        <%-- <div class="FloatRight">
            <asp:Button ID="btnSearch" runat="server" AutoPostBack="false" Text="Search"></asp:Button
            >
        </div>
        <div class="FloatRight">
            <asp:TextBox ID="txtSearch" runat="server" AutoPostBack="false" CssClass="Search" 
                onfocus="if (IsEmpty(this.value)) { $(this).removeClass('Search'); $(this).addClass('SearchRollOver');}"
                onblur="if (IsEmpty(this.value)) { $(this).removeClass('SearchRollOver'); $(this).addClass('Search');}">
                </asp:TextBox>
        </div>--%>
    </div>
    <div id="dvHeader-Menu">
    
    <div class="menu">
	<ul>
        <%-- %><li><a href="<%=WebSiteRoot() %>Login/Login.aspx">Home</a></li>
        <li><a href="<%=WebSiteRoot() %>Customer/CreateCustomer.aspx">Customer</a>
            <ul>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Customer/CreateCustomer.aspx">Manage Customer</a></li>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Customer/Delete.aspx">Delete Customer</a></li>
            </ul>
        </li>
        <li><a href="<%=WebSiteRoot() %>Premium/CreatePremium.aspx">Premiums</a>
            <ul>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Premium/CreatePremium.aspx">Create Premium</a></li>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Premium/DeletePremium.aspx">Delete Premium</a></li>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Premium/SearchPremium.aspx">Search Premium</a></li>
            </ul>
        </li>--%>
        <li><a>test</a>
            <ul>
                <li style="background-color:#6699CC; height:30px; padding-left:7px; padding-top:7px; "><a style="color:#FFFFFF; text-decoration:none;" href="<%=WebSiteRoot() %>Customer/test.aspx">Create Customer</a></li>
            </ul>
        </li>
        <li><a href="<%=WebSiteRoot() %>Customer/StaffLogin.aspx">Login</a></li> 
	</ul>
	
</div>
    
    </div>
</div>
