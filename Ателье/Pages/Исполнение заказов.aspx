<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Исполнение заказов.aspx.cs" Inherits="Ателье.Pages.Исполнение_заказов" %>
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
    <h2> Выполнение заказов работниками ателье</h2>
    <p class="style2">
        Ниже представлена информация об исполнении заказов работниками ателье "Силуэт". Для обновления данных 
        после корректировки следует перезагрузить страницу или временно сменить текущую страницу.</p>
</div>
<div>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="Заказ" HeaderText="Заказ" SortExpression="Заказ">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ФИО_сотрудника" HeaderText="ФИО сотрудника" 
                SortExpression="ФИО_сотрудника">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Дата_начала_исполнения" DataFormatString="{0:d}" 
                HeaderText="Дата начала исполнения" SortExpression="Дата_начала_исполнения">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Дата_сдачи_заказа" DataFormatString="{0:d}" 
                HeaderText="Дата сдачи заказа" SortExpression="Дата_сдачи_заказа">
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
        SelectCommand="SELECT * FROM [Выполнение заказов сотрудниками]">
    </asp:SqlDataSource>
   
</div>
<div>
    <h2> Корректировка Данных:</h2>
</div>
<div>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource2" HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="Заказ" HeaderText="Заказ" SortExpression="Заказ">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Сотрудник" HeaderText="Сотрудник" 
                SortExpression="Сотрудник">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Дата_начала_исполнения" DataFormatString="{0:d}" 
                HeaderText="Дата начала исполнения" SortExpression="Дата_начала_исполнения">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:BoundField>
            <asp:BoundField DataField="Дата_сдачи_заказа" DataFormatString="{0:d}" 
                HeaderText="Дата сдачи заказа" SortExpression="Дата_сдачи_заказа">
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Выполнение заказов] WHERE (Заказ = @original_Заказ) AND (Сотрудник = @original_Сотрудник)" 
        InsertCommand="INSERT INTO [Выполнение заказов] (Заказ, Сотрудник, Дата_начала_исполнения, Дата_сдачи_заказа) VALUES (@Заказ, @Сотрудник, @Дата_начала_исполнения, @Дата_сдачи_заказа)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Выполнение заказов]"       
        UpdateCommand="UPDATE [Выполнение заказов] SET Заказ = @Заказ, Сотрудник = @Сотрудник, Дата_начала_исполнения = @Дата_начала_исполнения, Дата_сдачи_заказа = @Дата_сдачи_заказа WHERE (Заказ = @Заказ) AND (Сотрудник = @Сотрудник)">
        <DeleteParameters>
            <asp:Parameter Name="original_Заказ"/>
            <asp:Parameter Name="original_Сотрудник" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Заказ" />
            <asp:Parameter Name="Сотрудник" />
            <asp:Parameter Name="Дата_начала_исполнения" />
            <asp:Parameter Name="Дата_сдачи_заказа" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Заказ" />
            <asp:Parameter Name="Сотрудник" />
            <asp:Parameter Name="Дата_начала_исполнения" />
            <asp:Parameter Name="Дата_сдачи_заказа" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>
