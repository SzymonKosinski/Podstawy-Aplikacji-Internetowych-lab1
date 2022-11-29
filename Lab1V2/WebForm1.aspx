    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" %>
    <!DOCTYPE html>
<script language="C#" runat="server">

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        int losuj = r.Next(1,5);
        switch(losuj)
        {
            case 1:
                imagebutton1.Visible = true;
                imagebutton2.Visible = false;
                imagebutton3.Visible = false;
                imagebutton4.Visible = false;
                break;
            case 2:
                imagebutton1.Visible = false;
                imagebutton2.Visible = true;
                imagebutton3.Visible = false;
                imagebutton4.Visible = false;
                break;
            case 3:
                imagebutton1.Visible = false;
                imagebutton2.Visible = false;
                imagebutton3.Visible = true;
                imagebutton4.Visible = false;
                break;
            case 4:
                imagebutton1.Visible = false;
                imagebutton2.Visible = false;
                imagebutton3.Visible = false;
                imagebutton4.Visible = true;
                break;
        }

    }
    protected void Button1Clicked(object sender, EventArgs e)
    {
        imagebutton1.Visible = false;
        imagebutton2.Visible = true;
    }
    protected void Button2Clicked(object sender, EventArgs e)
    {
        imagebutton2.Visible = false;
        imagebutton4.Visible = true;
    }
    protected void Button3Clicked(object sender, EventArgs e)
    {
        imagebutton3.Visible = false;
        imagebutton1.Visible = true;
    }
    protected void Button4Clicked(object sender, EventArgs e)
    {
        imagebutton4.Visible = false;
        imagebutton3.Visible = true;
    }
</script>

<form id="form1" runat="server">
      
    <html xmlns="http://www.w3.org/1999/xhtml">  
    <head runat="server">  
        <title></title>  
    </head>  
        <div style="width: 200px; height: 200px; border:1px solid #000; float:left">
            <asp:ImageButton id="imagebutton1" runat="server"
                AlternateText="ImageButton 1"
                Style="margin: 50px;"
                HorizontalAlign="Center"
                OnClick ="Button1Clicked"
                src="src/kitten1.jpg" />
        </div>
        <div style="width:200px;height:200px; border:1px solid #000; float:right">
            <asp:ImageButton id="imagebutton2" runat="server"
                AlternateText="ImageButton 1"
                Style="margin: 50px;"
                OnClick ="Button2Clicked"
                HorizontalAlign="Center"
                src="src/kitten2.jpg" Visible="False" />
        </div>
        <div style="width:100%; height:200px; border:1px solid #000;text-align:center; float:left";>
           <asp:Button id="Button1"
           Text="Przełącz rysunek"
            Style="margin:90px"
           OnClick="SubmitBtn_Click" 
           runat="server"/>
        </div>
        <div style="width:200;height:200px; border:1px solid #000; float:left">
            <asp:ImageButton id="imagebutton3" runat="server"
                AlternateText="ImageButton 1"
                Style="margin: 50px;"
                HorizontalAlign="Center"
                OnClick ="Button3Clicked"
                src="src/kitten3.jpeg" Visible="False" />
        </div>
        <div style="width:200px;height:200px; border:1px solid #000; float:right">
            <asp:ImageButton id="imagebutton4" runat="server"
                AlternateText="ImageButton 1"
                Style="margin: 50px;"
                HorizontalAlign="Center"
                OnClick ="Button4Clicked"
                src="src/kitten4.jpg" Visible="False" />
        </div>
</form>


