<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="WebSwift.Customer.CreateCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--<script language="javascript" type="text/javascript">
    function ValidateServiceType(sender, args) {
        var isValid = false;
        if (document.getElementById('<%=ddlServiceType1.ClientID %>').value != 0) {
            isValid = true;
        }
        if (document.getElementById('<%=ddlServiceType2.ClientID %>').value != 0) {
            isValid = true;
        }
        if (document.getElementById('<%=ddlServiceType3.ClientID %>').value != 0) {
            isValid = true;
        }
        args.IsValid = isValid;
        return args.IsValid;
    }

    function ValidateBookingTime(sender, args) {
        var isValid = false;
        if (document.getElementById('<%=ddlBookingTime.ClientID %>').value != 0) {
            isValid = true;
        }
        args.IsValid = isValid;
        return args.IsValid;
    }

</script>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="ForumTitle">
        Manage Customer</h1>
    <hr />
    <p>
        <div id="dvPostsContainer">
            <div id="dvAddNewPost" style="border: solid 1px #44525E; margin-top: 20px;">

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">Update Customer (Optional)</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Select Customer:</div>
                    <div style="float:left; width:150px;"><asp:DropDownList ID="lstCustomers" runat="server" AutoPostBack="true" Width="100%" OnSelectedIndexChanged="lstCustomers_SelectedIndexChanged"></asp:DropDownList></div>
                    <div style="clear:left;">&nbsp;</div>
                </div>
                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; "> Customer Name</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">First Name:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtFirstName" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorFirstName" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Last Name:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtLastName" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorLastName" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; "> Account Details </div>
                </div>
                    <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Password:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtPassword1" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorPassword1" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Password:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtPassword2" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorPassword2" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    
                    <div>
                        <%--<asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDesc" CssClass="Required" ErrorMessage="Enter Description" SetFocusOnError="true"></asp:RequiredFieldValidator> --%>
                    </div>
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <%--<div style="font-weight: bold;font-size: 20px; color: #44525E;">Re: University Life</div>--%>
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Contact Details</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Home Address:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtHomeAddress" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorAddress" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Email Address:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtEmailAddress" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorEmail" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Phone Number:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtPhoneNumber" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorPhone" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Payment Details</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">CreditCard Number:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtCreditCard" runat="server" Width="100%"></asp:TextBox></div>
                    <div style="float:left; margin-left:20px; "><asp:label ID="lblErrorCreditCardNum" runat="server" CssClass="Required" Text=""></asp:label></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="clear: both;">&nbsp;</div>
                    <div style="clear: both;">
                        <asp:Button ID="Button1" runat="server" Text="Create Customer" 
                            CausesValidation="true" onclick="btnSave_Click" />&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
    </p>
</asp:Content>