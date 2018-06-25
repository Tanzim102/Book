<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_title.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">

    <div style="margin-left: 230px; margin-top: 10px">
    
        <table>
       <tr>
               <td><font color="white">Book Name :</td>
               <td>.</td>
               <td ><input style="height: 10px" type="text" id="t1" onkeyup="display();" /></td>
        </tr>
     </table>
    </div>
    <div style="margin-left: 300px" id="d1"></div>


    <script type="text/javascript">
        function display() {

            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "search_n.aspx?&nm=" + document.getElementById("t1").value, false);
            xmlhttp.send(null);
            document.getElementById("d1").innerHTML = xmlhttp.responseText;
        }

        function rec(msg) {

            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "buy.aspx?&nm=" + String(msg), false);
            xmlhttp.send(null);
            document.getElementById("d1").innerHTML = xmlhttp.responseText;
        }

        function send(msg) {

            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "confirm.aspx?&nm=" + String(msg), false);
            xmlhttp.send(null);
            document.getElementById("d1").innerHTML = xmlhttp.responseText;
        }


    </script>
</html>
</asp:Content>

