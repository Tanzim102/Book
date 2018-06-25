<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book_upload.aspx.cs" Inherits="book_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1" style="top: 175px; left: 420px; position: absolute; height: 396px; width: 476px">
            <tr>
                <td class="auto-style5" style="color: #FFFFFF">Book ID:&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxID" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxID" ErrorMessage="Book ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style5" style="color: #FFFFFF">Title:&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxTitle" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxTitle" ErrorMessage="Book Title is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style5" style="color: #FFFFFF">Description:&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxDescription" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxDescription" ErrorMessage="Description is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style5" style="color: #FFFFFF">URL:&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxURL" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxURL" ErrorMessage="URL is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFFFF">Catagory:&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListCounrty" runat="server" Width="182px" Height="36px">
                        <asp:ListItem>select catagory</asp:ListItem>
                        <asp:ListItem>science_fiction</asp:ListItem>
                        <asp:ListItem>action & adventure</asp:ListItem>
                        <asp:ListItem>drama</asp:ListItem>
                        <asp:ListItem>satire</asp:ListItem>
                        <asp:ListItem>horror</asp:ListItem>
                        <asp:ListItem>romance</asp:ListItem>
                        <asp:ListItem>detective</asp:ListItem>
                        <asp:ListItem>historical_fiction</asp:ListItem>
                        <asp:ListItem>thrillers</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListCounrty" ErrorMessage="select your country" ForeColor="Red" InitialValue="select country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF"> 

                    Image: 

                 </td>

                 <td>

                         <asp:FileUpload ID="FileUpload1" runat="server"  />

                  </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #FFFFFF">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="92px" OnClick="Button1_Click" Height="30px" />
                    <input id="Reset1" type="reset" value="reset" style="height: 30px; width: 76px" /></td>
                <td>&nbsp;</td>
             
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
</asp:Content>

