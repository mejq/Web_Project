<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/AppPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PROJECT.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True"
 SelectCommand="SELECT * FROM [User_Info]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" BackColor="#7BA45D" BorderColor="#57382D" Font-Bold="False" Width="1221px">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
            </Columns>
            <HeaderStyle BackColor="#EFB261" ForeColor="Black" />
            <PagerStyle BackColor="#5A463F" />
            <RowStyle BackColor="#7BA45D" />
        </asp:GridView>
        <asp:Button ID="btn_del" runat="server" OnClick="btn_del_Click1" Text="Button" BackColor="#5A463F" Font-Bold="True" ForeColor="White" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" BackColor="#5A463F" BorderColor="#59453F" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Add User" Width="734px"></asp:Label>
    </p>

&nbsp;<asp:TextBox ID="txtbx_Username" runat="server" BackColor="#7BA45D" BorderColor="#5A463F" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="141px">Username</asp:TextBox>
    <asp:TextBox ID="txtbx_Password" runat="server" BackColor="#7BA45D" BorderColor="#59453E" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="141px">Password</asp:TextBox>
    <asp:TextBox ID="txtbx_email" runat="server" BackColor="#7BA45D" BorderColor="#5A463F" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="155px">Email</asp:TextBox>
    <asp:DropDownList ID="ddl_gender" runat="server" BackColor="#7BA45D" Font-Bold="True" ForeColor="White" Height="30px">
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddl_role" runat="server" BackColor="#7BA45D" Font-Bold="True" ForeColor="White" Height="30px" Width="78px">
        <asp:ListItem>User</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btn_add" runat="server" BackColor="#5A463F" Font-Bold="True" ForeColor="White" OnClick="btn_del_Click1" Text="Button" />
    &nbsp;&nbsp;&nbsp; `<p>
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" BackColor="#5A463F" BorderColor="#59453F" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Update User" Width="734px"></asp:Label>
    </p>
    <p>
    <asp:DropDownList ID="ddl_id_updt" runat="server" BackColor="#7BA45D" Font-Bold="True" ForeColor="White" Height="43px" DataSourceID="SqlDataSource1" DataTextField="userID" DataValueField="userID">
    </asp:DropDownList>
    </p>

&nbsp;<asp:TextBox ID="txtbx_Username_updt" runat="server" BackColor="#7BA45D" BorderColor="#5A463F" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="141px"></asp:TextBox>
    <asp:TextBox ID="txtbx_Password_updt" runat="server" BackColor="#7BA45D" BorderColor="#59453E" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="141px"></asp:TextBox>
    <asp:TextBox ID="txtbx_email_updt" runat="server" BackColor="#7BA45D" BorderColor="#5A463F" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="155px"></asp:TextBox>
    <asp:DropDownList ID="ddl_gender_updt" runat="server" BackColor="#7BA45D" Font-Bold="True" ForeColor="White" Height="30px">
        <asp:ListItem>Gender</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddl_role_updt" runat="server" BackColor="#7BA45D" Font-Bold="True" ForeColor="White" Height="30px" Width="78px" OnSelectedIndexChanged="ddl_role_updt_SelectedIndexChanged">
        <asp:ListItem>Role</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
