<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NewRegis.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <script src="JavaScript.js" type="text/javascript">
 </script>
    <%--<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>--%>
    <%--<script>
        $(document).ready(function ()
        {
            $('#Button1').click(function ()
            {
                var firstname = $('#TextBox1').val();
                if (firstname == '')
                {
                    alert("Please enter first name");
                    return false;
                }
                var lastname = $('#TextBox2').val();
                if (lastname == '')
                {
                    alert("Please enter last name");
                    return false;
                }
                var email = $('#TextBox3').val();
                if (email == '')
                {
                    alert("Please enter email");
                    return false;
                }
                var phno = $('#TextBox4').val();
                if (phno == '')
                {
                    alert("Please enter ph no");
                    return false;
                }
                return true;
            });
        });

 

    </script>--%>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Last Name&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Ph No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Gender:<br />
        <asp:RadioButtonList ID="RadioButtonListGender" runat="server" Height="16px" Width="87px">

            <asp:ListItem>Male</asp:ListItem>

            <asp:ListItem>Female</asp:ListItem>

            <asp:ListItem>Other</asp:ListItem>

        </asp:RadioButtonList><br />
        <br />
         <asp:Label ID="LabelCheckBox" runat="server" Text="Stream " Font-Bold="True"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:CheckBox ID="cbDotNet" runat="server" Text=". Net" />

        &nbsp;<asp:CheckBox ID="cbJava" runat="server" Text="Java" />

        &nbsp;<asp:CheckBox ID="cbSdet" runat="server" Text="Sdet" />
        <br />
        DOB:<br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        Address:<br />
        Country<br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="cid" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterationConnectionString %>" SelectCommand="SELECT * FROM [country1]"></asp:SqlDataSource>
        State<br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="sid" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterationConnectionString %>" SelectCommand="SELECT * FROM [state1] WHERE ([cid] = @cid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="cid" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        City<br />
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="cityid" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterationConnectionString %>" SelectCommand="SELECT * FROM [city1] WHERE ([sid] = @sid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="sid" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit_Click"/>
      <%-- OnClientClick="return validateForm()" --%>
    </form>
</body>
</html>
