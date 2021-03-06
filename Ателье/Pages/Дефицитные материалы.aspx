﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Дефицитные материалы.aspx.cs" Inherits="Ателье.Pages.Дефицитные_материалы" %>
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
        Дефицитные материалы
    </h2>
    <p class="style2">
        Ниже представлена информация о материалах,&nbsp; дефицитных или&nbsp; отсутствующих на складе 
        ателье "Силуэт".</p>
    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Код_материала" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_материала" HeaderText="Код материала" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_материала" HeaderText="Название материала" 
                    SortExpression="Название_материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Тип_материала" HeaderText="Тип материала" 
                    SortExpression="Тип_материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_материалов_на_складе" 
                    HeaderText="Количество материалов на складе" 
                    SortExpression="Количество_материалов_на_складе">
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
            SelectCommand="SELECT * FROM [Дефицитные материалы] ORDER BY [Название_материала]">
        </asp:SqlDataSource>

    </div>
</asp:Content>
