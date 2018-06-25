<%@ Page Language="C#" %>

<script runat="server">

   private void display(object sender, EventArgs e)
   {
      string bid = id.Value;
      string bname = name.Value;
      string bauthor = author.Value;
      changed_text.InnerHtml = "Book entry - [" + bid + "] [" + bname + "] [" + bauthor + "]";
   }
</script>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
       <form runat="server">
         Book ID : <br>
         <input runat="server" id="id" type="text" />
         <br>
         Book Name : <br>
         <input runat="server" id="name" type="text" />
         <br>
         Author : <br>
         <input runat="server" id="author" type="text" />
         <br>
         <input runat="server" id="button1" type="submit" value="Submit" OnServerClick="display"/>
         
         <hr />
         <h3> Status : </h3>
         <span runat="server" id="changed_text" />
         <br>
      </form>
    </body>
</html>
