<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="KangrooUniversity.ViewBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script language="javascript">
    function DeleteBooking(BookingNo) {
        document.getElementById('<%=hdnBookingNo.ClientID %>').value = BookingNo;
        document.getElementById('<%=btnRemoveBooking.ClientID %>').click();
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:HiddenField ID="hdnBookingNo" runat="server" />
<asp:Button ID="btnRemoveBooking" runat="server" onclick="btnRemoveBooking_Click" style="display:none;" />
<h1>Current Bookings</h1>
<hr />
<p>
    <asp:Repeater ID="rptCurrentBookings" runat="server" 
        onitemdatabound="rptCurrentBookings_ItemDataBound">
        <HeaderTemplate>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr style="height: 50px; padding:10px;background-color: #09AAED;">
                    <td>Booking Number</td>
                    <td>Date Time</td>
                    <td>Vehicle Reg. No</td>
                    <td>Work Type</td>
                    <td>Action</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="height: 50px; padding:10px;background-color: #D9E1E4;">
                    <td><span><%# Eval("BookingNo") %></span></td>
                    <td><span><%# Eval("Date")%></span></td>
                    <td><span><%# Eval("RegNo")%></span></td>
                    <td><asp:Literal ID="ltrlWorkType" runat="server"></asp:Literal></td>
                    <td>
                        <a href="NewBookings.aspx?ID=<%# Eval("BookingNo") %>">Show Details</a>&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="DeleteBooking(<%# Eval("BookingNo") %>);">Cancel</a>
                    </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="height: 50px; padding:10px;background-color: #5B9058;">
                    <td><span><%# Eval("BookingNo") %></span></td>
                    <td><span><%# Eval("Date")%></span></td>
                    <td><span><%# Eval("RegNo")%></span></td>
                    <td><asp:Literal ID="ltrlWorkType" runat="server"></asp:Literal></td>
                    <td>
                        <a href="NewBookings.aspx?ID=<%# Eval("BookingNo") %>">Show Details</a>&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="return DeleteBooking(<%# Eval("BookingNo") %>);">Cancel</a>
                    </td>
            </tr>
        </AlternatingItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</p>
<h1>Closed Bookings</h1>
<hr />
<p>

<asp:Repeater ID="rptPastBookings" runat="server" 
        onitemdatabound="rptPastBookings_ItemDataBound">
        <HeaderTemplate>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr style="height: 50px; padding:10px;background-color: #09AAED;">
                    <td>Booking Number</td>
                    <td>Date Time</td>
                    <td>Vehicle Reg. No</td>
                    <td>Work Type</td>
                    <td>Action</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="height: 50px; padding:10px;background-color: #D9E1E4;">
                    <td><span><%# Eval("BookingNo") %></span></td>
                    <td><span><%# Eval("Date")%></span></td>
                    <td><span><%# Eval("RegNo")%></span></td>
                    <td><asp:Literal ID="ltrlWorkType" runat="server"></asp:Literal></td>
                    <td>
                        <a href="NewBookings.aspx?ID=<%# Eval("BookingNo") %>">Show Details</a>&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="return DeleteBooking(<%# Eval("BookingNo") %>);">Cancel</a>
                    </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="height: 50px; padding:10px;background-color: #5B9058;">
                    <td><span><%# Eval("BookingNo") %></span></td>
                    <td><span><%# Eval("Date")%></span></td>
                    <td><span><%# Eval("RegNo")%></span></td>
                    <td><asp:Literal ID="ltrlWorkType" runat="server"></asp:Literal></td>
                    <td>
                        <a href="NewBookings.aspx?ID=<%# Eval("BookingNo") %>">Show Details</a>&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="return DeleteBooking(<%# Eval("BookingNo") %>);">Cancel</a>
                    </td>
            </tr>
        </AlternatingItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    
</p><br /><br /><br /><br />
</asp:Content>