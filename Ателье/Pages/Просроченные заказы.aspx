<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Просроченные заказы.aspx.cs" Inherits="Ателье.Pages.Просроченные_заказы" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            font-size: large;
            text-align: justify;
        }
        .style3
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2>
        <asp:Image ID="Image2" runat="server" Height="210px" ImageAlign="AbsMiddle" 
            ImageUrl="~/pic/siluet.jpg" Width="400px" BorderColor="#666666" 
            GenerateEmptyAlternateText="True" />
    </h2>
    </div>
    <div>
    <h2>
        Просроченные заказы
    </h2>
    <p class="style2">
        Ниже представлена информация о заказах, выполненных несвоевременно работниками ателье "Силуэт". </p>
    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Заказ" HeaderText="Заказ" SortExpression="Заказ" />
                <asp:BoundField DataField="ФИО_сотрудника" HeaderText="ФИО сотрудника" 
                    SortExpression="ФИО_сотрудника">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_сдачи_заказа" DataFormatString="{0:d}" 
                    HeaderText="Дата сдачи заказа" SortExpression="Дата_сдачи_заказа">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Плановая дата сдачи заказа" DataFormatString="{0:d}" 
                    HeaderText="Плановая дата сдачи заказа" 
                    SortExpression="Плановая дата сдачи заказа">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Просроченные заказы] ORDER BY [Заказ], [Плановая дата сдачи заказа]">
        </asp:SqlDataSource>

    </div>
</asp:Content>
