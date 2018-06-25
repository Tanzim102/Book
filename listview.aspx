<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listview.aspx.cs" Inherits="listview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="top: 150px; left: 300px; position: absolute; height: 201px; width: 970px">
        <asp:ListView ID="ListView1" runat="server" style="top: 201px; left: 399px; position: absolute; height: 722px; width: 970px">
        <ItemTemplate>
            <div>
                <table>
                <tr>
                    <td style="width:200px; left:20px; right:20px;"><img style="top: 0px; left: 0px; height: 100px; width: 100px" src="<%#Eval("image") %>" /></td>
                    <td style="width:400px; left:20px; right:20px;">
                        <font color="white">
                        <%#Eval("title")%>
                        <br>
                        <%#Eval("description")%>
                        </font>
                     </td>
                        <td style="width:400px; left:20px; right:20px;"><input style="padding: 10px" type="button" onclick="location.href = 'http://google.com';" value="Buy/Download" /></td>
                   
                </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:ListView>
    </div>
</asp:Content>
