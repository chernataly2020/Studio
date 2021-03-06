﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Заказы.aspx.cs" Inherits="Ателье.Pages.Заказы" %>
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
        Заказы
    </h2>
    <p class="style2">
        Ниже представлена информация о заказах ателье "Силуэт". </p>       
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
            AutoGenerateEditButton="True" AutoGenerateSelectButton="True" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Код_заказа" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Код_заказа" HeaderText="Код заказа" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_заказа">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Наименование_заказа" 
                    HeaderText="Наименование заказа" SortExpression="Наименование_заказа">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Наименование_изделия" 
                    HeaderText="Наименование изделия" SortExpression="Наименование_изделия">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_изделия" HeaderText="Количество изделия" 
                    SortExpression="Количество_изделия">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_заказа" DataFormatString="{0:d}" 
                    HeaderText="Дата заказа" SortExpression="Дата_заказа">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_реализации_заказа" DataFormatString="{0:d}" 
                    HeaderText="Дата реализации заказа" SortExpression="Дата_реализации_заказа">
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
            DeleteCommand="DELETE FROM [Заказы] WHERE [Код_заказа] = @original_Код_заказа AND [Наименование_заказа] = @original_Наименование_заказа AND [Наименование_изделия] = @original_Наименование_изделия AND [Количество_изделия] = @original_Количество_изделия AND [Цена] = @original_Цена AND [Дата_заказа] = @original_Дата_заказа AND [Дата_реализации_заказа] = @original_Дата_реализации_заказа" 
            InsertCommand="INSERT INTO [Заказы] ([Наименование_заказа], [Наименование_изделия], [Количество_изделия], [Цена], [Дата_заказа], [Дата_реализации_заказа]) VALUES (@Наименование_заказа, @Наименование_изделия, @Количество_изделия, @Цена, @Дата_заказа, @Дата_реализации_заказа)" 
            SelectCommand="SELECT * FROM [Заказы]"             
            
            UpdateCommand="UPDATE [Заказы] SET [Наименование_заказа] = @Наименование_заказа, [Наименование_изделия] = @Наименование_изделия, [Количество_изделия] = @Количество_изделия, [Цена] = @Цена, [Дата_заказа] = @Дата_заказа, [Дата_реализации_заказа] = @Дата_реализации_заказа WHERE [Код_заказа] = @original_Код_заказа AND [Наименование_заказа] = @original_Наименование_заказа AND [Наименование_изделия] = @original_Наименование_изделия AND [Количество_изделия] = @original_Количество_изделия AND [Цена] = @original_Цена AND [Дата_заказа] = @original_Дата_заказа AND [Дата_реализации_заказа] = @original_Дата_реализации_заказа" 
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Код_заказа" Type="Int32" />
                <asp:Parameter Name="original_Наименование_заказа" Type="String" />
                <asp:Parameter Name="original_Наименование_изделия" Type="String" />
                <asp:Parameter Name="original_Количество_изделия" Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Дата_заказа" />
                <asp:Parameter DbType="Date" Name="original_Дата_реализации_заказа" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Наименование_заказа" Type="String" />
                <asp:Parameter Name="Наименование_изделия" Type="String" />
                <asp:Parameter Name="Количество_изделия" Type="Int32" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Дата_заказа" />
                <asp:Parameter DbType="Date" Name="Дата_реализации_заказа" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Наименование_заказа" Type="String" />
                <asp:Parameter Name="Наименование_изделия" Type="String" />
                <asp:Parameter Name="Количество_изделия" Type="Int32" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Дата_заказа" />
                <asp:Parameter DbType="Date" Name="Дата_реализации_заказа" />
                <asp:Parameter Name="original_Код_заказа" Type="Int32" />
                <asp:Parameter Name="original_Наименование_заказа" Type="String" />
                <asp:Parameter Name="original_Наименование_изделия" Type="String" />
                <asp:Parameter Name="original_Количество_изделия" Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Дата_заказа" />
                <asp:Parameter DbType="Date" Name="original_Дата_реализации_заказа" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
