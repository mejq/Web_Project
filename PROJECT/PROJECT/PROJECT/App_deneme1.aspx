<%@ Page Title="" Language="C#" MasterPageFile="~/AppPage.Master" AutoEventWireup="true" CodeBehind="App_deneme1.aspx.cs" Inherits="PROJECT.App_deneme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="How Was Your Day ?"></asp:Label>
            <br />
            <asp:TextBox ID="txtbx_diary" runat="server" BackColor="#8D6E63" BorderColor="#5A463F" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Italic="True" ForeColor="White" Height="216px" TextMode="MultiLine" Width="326px"></asp:TextBox>
&nbsp;
            <asp:Button ID="btn_save" runat="server" BackColor="#795548" BorderColor="#795548" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Button" Width="76px" OnClick="btn_save_Click" />
        </p>
        <p>
            <asp:FileUpload ID="FileUpld_diary" runat="server" AllowMultiple="True" BackColor="#8D6E63" BorderColor="#5A463F" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="White" Width="329px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridW_publicdiary" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Font-Bold="True" ForeColor="Black" Width="923px" CellPadding="2" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
        </p>
        <p>
        </p>
    </form>
</asp:Content>
