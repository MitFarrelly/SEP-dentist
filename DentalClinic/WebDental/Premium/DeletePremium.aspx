<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DeletePremium.aspx.cs" Inherits="WebSwift.Premium.DeletePremium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="ForumTitle">
        Delete Premium</h1>
    <hr />

        <div id="dvPostsContainer">
            <div id="dvAddNewPost" style="border: solid 1px #44525E; margin-top: 20px;">

                <div class="PostHead" style="height: 30px; padding: 10px; background-color: #09AAED;">
                    <div class="FloatLeft" style="font-weight: bold; font-size: 20px; color: #F1F1F1; ">
                        Premium Details</div>
                </div>
              
                    </div>
                    <div style="clear:left;">&nbsp;</div>
                </div>
                <div class="PostBody" style="background-color: #FFFFFF; padding: 10px;">
                    <div style="font-size: 14px; color: #222222; float:left; width:100px;">Select Premium</div>
                    <div style="float:left; width:150px;">
                        <div style="float:left; width:150px;">
                            <asp:DropDownList ID="lstPremiums2" runat="server" AutoPostBack="true" Width="100%">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div style="float:left; margin-left:20px; ">
                        <asp:label ID="lblErrorPremiumID" runat="server" CssClass="Required" Text=""></asp:label>
                    </div>
                    
                    <div style="clear:left;">
                        &nbsp;</div><asp:Button ID="Button1" runat="server" Text="Delete Premium" 
                            CausesValidation="true" onclick="btnPremiumSave_Click" />
                    </div>
                          

                </div>

            </div
        </div>

        <br />
        <br />
        <br />
    
</asp:Content>