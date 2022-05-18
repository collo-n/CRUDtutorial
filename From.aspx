<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="From.aspx.cs" Inherits="CRUDtutorial.From" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="CRUD tutorial"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Product ID"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Design"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDesign" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Color"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLColor" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Expiry Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="399px" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="Design" HeaderText="Design" SortExpression="Design" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="InsertDate" HeaderText="InsertDate" SortExpression="InsertDate" />
                    <asp:BoundField DataField="UpdateDate" HeaderText="UpdateDate" SortExpression="UpdateDate" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="CRUDtutorial.ProgrammingClassDataContext" EntityTypeName="" TableName="ProductInfo_Tables">
            </asp:LinqDataSource>
            <br />
            <asp:Label ID="lblSubmit" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
