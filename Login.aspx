<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="contentLogin" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
        <table class="auto-style1" style="top: 175px; left: 400px; position: absolute; height: 221px; width: 426px">
            <tr>
                <td class="auto-style5" style="color: #FFFFFF">User Name : </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxUNlogin" runat="server" Width="180px" Height="16px"></asp:TextBox>
                </td>
                <td class="auto-style4" style="width: 123px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUNlogin" ErrorMessage="provide username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="color: #FFFFFF">Password : </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxPassLogin" runat="server" TextMode="Password" Width="180px" Height="16px"></asp:TextBox>
                </td>
                <td class="auto-style8" style="width: 123px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassLogin" ErrorMessage="provide password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td </td>
                <td class="auto-style10">
                   <asp:CheckBox ID ="rememberme" runat="server"  Text =" remember password" style="color: #FFFFFF" /><br />
                </td>
                <td class="auto-style8" style="width: 123px">
                  
                </td>
            </tr>

            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" Height="38px" Width="81px" />
                </td>
                <td style="width: 123px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/REGISTER_INFO.aspx" style="color: #00FFFF">New User?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2" style="width: 123px">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
