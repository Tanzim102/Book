<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booklist.aspx.cs" Inherits="booklist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; top: 175px; left: 200px; position: absolute; height: 339px;">
        <tr>
            <td style="width: 200px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/book1.jpg" style="top: 0px; left: 0px; height: 100px; width: 100px" />
            </td>
            <td style="width: 495px"><span runat="server" id ="title1" style="font-size: large; color: #FFFFFF">Title</span><br style="color: #FFFFFF"><span runat="server" id ="author1" style="color: #FFFFFF">Author</span></td>
            <td>
                <asp:Button ID="Button1" runat="server" CustomParameter="101" Text="Buy/Download" Width="155px" OnClick="Button1_Click" Height="40px" />
            </td>
        </tr>
    </table>
</asp:Content>

