<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="contentUsers" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <div style="top: 200px; left: 0px; position: absolute; height: 55px; width: 1310px; text-align: center">
    
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome," style="color: #FFFFFF; font-size: x-large"></asp:Label>
        <br />
        <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Log out" Height="34px" Width="112px" />
    
    </div>
</asp:Content>
