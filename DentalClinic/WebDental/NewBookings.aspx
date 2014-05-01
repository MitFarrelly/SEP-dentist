<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NewBookings.aspx.cs" Inherits="KangrooUniversity.NewBookings"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script language="javascript" type="text/javascript">
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

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdnForumID" runat="server" />
    <h1 id="ForumTitle">
        Create New Booking</h1>
    <hr />
    <br />
    <p>
        <div id="dvPostsContainer">
            <div id="dvAddNewPost" style="border: solid 1px #44525E; margin-top: 20px;">
                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <%--<div style="font-weight: bold;font-size: 20px; color: #44525E;">Re: University Life</div>--%>
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Vehicle Details</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Reg No:</div>
                    <div style="float:left; width:150px;"><asp:TextBox ID="txtRegNo" runat="server" 
                            Width="100%"></asp:TextBox></div><div style="float:left; margin-left:20px; "><asp:RequiredFieldValidator ID="rfvRegNumber" runat="server" ControlToValidate="txtRegNo" Display="Dynamic" CssClass="Required" ErrorMessage="Enter vehicle registration number" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    <div style="clear:left;">&nbsp;</div>
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Repair/Service Details</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left;">
                        <asp:DropDownList ID="ddlServiceType1" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Value="0">Service Type 1</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div style="font-size: 14px; color: #222222; float:left; margin-left:10px;">
                        <asp:DropDownList ID="ddlServiceType2" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Value="0">Service Type 2</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div style="font-size: 14px; color: #222222; float:left; margin-left:10px;">
                        <asp:DropDownList ID="ddlServiceType3" runat="server"  AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Value="0">Service Type 3</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div style="clear:left;">&nbsp;</div>

                    <div style="clear:left;">
                        <asp:CustomValidator ID="rfvServiceTye" runat="server" EnableClientScript="true" ValidateEmptyText="True" CssClass="Required" ClientValidationFunction="ValidateServiceType" Display="Dynamic" ErrorMessage="Select atleast one work type" SetFocusOnError="true" ControlToValidate="ddlServiceType1"></asp:CustomValidator>
                    </div>



                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Description:</div>
                    <div style="float:left;"><asp:TextBox ID="txtDesc" runat="server" 
                            TextMode="MultiLine" style="width:400px; height:50px;" ></asp:TextBox></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div>
                        <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDesc" CssClass="Required" ErrorMessage="Enter Description" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </div>

                    
                </div>

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <%--<div style="font-weight: bold;font-size: 20px; color: #44525E;">Re: University Life</div>--%>
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Booking Date Time</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:160px;">Booking Date:</div>
                    <div style="float:left; "><asp:TextBox ID="txtBookingDate" 
                            runat="server" Width="150px"></asp:TextBox></div>
                    <div style="float:left; margin-left:40px;"><asp:Button ID="btnFindBookingTime" runat="server" Text="Find Booking Time"></asp:Button></div>
                    <div style="clear:left;">&nbsp;</div>
                    <div style="font-size: 14px; color: #222222; float:left; width:160px;">Avaialble Bookings:</div>
                    <div style="float:left; width:150px;"><asp:DropDownList ID="ddlBookingTime" runat="server">
                            <asp:ListItem Selected="True" Value="0">Select Booking Time</asp:ListItem>
                            <asp:ListItem  Value="09:00 AM">09:00 AM</asp:ListItem>
                            <asp:ListItem  Value="10:00 AM">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="12:00 AM">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="01:00 PM">01:00 PM</asp:ListItem>
                            <asp:ListItem Value="02:00 PM">02:00 PM</asp:ListItem>
                            <asp:ListItem  Value="03:00 PM">03:00 PM</asp:ListItem>
                            <asp:ListItem Value="04:00 PM">04:00 PM</asp:ListItem>
                            <asp:ListItem Value="05:00 PM">05:00 PM</asp:ListItem>
                        </asp:DropDownList></div>
                    <div style="clear:left;">
                        <asp:CustomValidator ID="customDateTimeValidator" runat="server" EnableClientScript="true" CssClass="Required" ValidateEmptyText="True" ClientValidationFunction="ValidateBookingTime" Display="Dynamic" ErrorMessage="Select booking time" SetFocusOnError="true" ControlToValidate="ddlBookingTime"></asp:CustomValidator>
                    </div>
                    <div style="clear: both;">&nbsp;</div>
                    <div style="clear: both;">
                        <asp:Button ID="btnSave" runat="server" Text="Create Booking" 
                            CausesValidation="true" onclick="btnSave_Click" />&nbsp;&nbsp;&nbsp;
                    </div>
                </div>




            </div>
        </div>
        <br /><br />
        
        <br />
        <br />
    </p>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtBookingDate.ClientID %>").datepicker({ dateFormat: "dd/mm/yy" });
        });
    </script>
</asp:Content>