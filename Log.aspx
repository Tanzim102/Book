<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="contentLogin" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">User Name : </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxUNlogin" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUNlogin" ErrorMessage="provide username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password : </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxPassLogin" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassLogin" ErrorMessage="provide password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" />
                </td>
               
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
