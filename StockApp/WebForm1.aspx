<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StockApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Application</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            background-color: cornflowerblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Stock Application</div>
        <asp:Panel ID="Panel1" runat="server" Height="669px">
            <br />
            <br />
            Get Quote:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 347px; top: 72px; position: absolute; height: 188px; width: 259px"></asp:Calendar>
            <br />
            &nbsp;Stock symbol:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Mode:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>I:Delayed</asp:ListItem>
                <asp:ListItem>R:"Real-time</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            
            <br />
            <br />
            <span class="auto-style1">Get Stock History</span><br />
            <br />
            Data type:
            <asp:RadioButton ID="btnfiftyTwoWkHigh" runat="server" Text="52 week high" />
            <asp:RadioButton ID="btnfiftyTwoWkHighDate" runat="server" Text="Date of high" />
            <asp:RadioButton ID="btnfiftyTwoWkLow" runat="server" Text="52 week low" />
            <asp:RadioButton ID="btnfiftyTwoWkLowDate" runat="server" Text="Date of low" />

            Get Stock History
            <br />
            &nbsp;Stock symbol:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Type:
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Ticks</asp:ListItem>
                <asp:ListItem>Minutes</asp:ListItem>
                <asp:ListItem>Weekly</asp:ListItem>
                <asp:ListItem>Montly</asp:ListItem>
                <asp:ListItem>Quartely</asp:ListItem>
                <asp:ListItem>Yearly</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            Special Requests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox3" runat="server" Height="66px" Width="168px"></asp:TextBox>
            <br />
            <br />
            <span class="auto-style1">Contact Information</span><br />
            <br />
            Name:
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            Email:
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <br />
            
            <br />
            <br />
            <asp:Label ID="lblfinal" runat="server"></asp:Label>
        </asp:Panel>
    </form>
    <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
    <script type="text/javascript">   
        $.ajax({
            type: "GET",
            url: 'http://marketdata.websol.barchart.com/getHistory.json?key=87c97c7bab4c11117e17883f1ee4b6bc&symbol=IBM&type=daily&startDate=20150105000000',
            
            contentType: "application/json;charset=utf-8",
            processData: true,
            success: function (data, status, xhr) {
                alert("The result is : " + status);
                ////console.log("data received", data);
            },
            error: function (xhr) {
                alert(xhr.responseText);
            }
        });
    
</script>

</body>
</html>
