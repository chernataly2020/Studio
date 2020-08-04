<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Изделия.aspx.cs" Inherits="Ателье.Pages.Изделия" %>
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
        Изделия
    </h2>
    <p class="style2">
        Ниже представлена информация об изделиях ателье "Силуэт". Для обновления данных 
        после корректировки следует перезагрузить страницу или временно сменить текущую страницу.</p>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Код_изделия" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Код_изделия" HeaderText="Код изделия" 
                    ReadOnly="True" SortExpression="Код_изделия">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Наименование_изделия" 
                    HeaderText="Наименование_изделия" SortExpression="Наименование_изделия">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_материала" HeaderText="Название материала" 
                    SortExpression="Название материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_материала_на_одно_изделие" 
                    HeaderText="Количество материала на одно изделие" 
                    SortExpression="Количество_материала_на_одно_изделие">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Цена_изделия" HeaderText="Цена изделия" 
                    SortExpression="Цена_изделия"></asp:BoundField>
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
            SelectCommand="SELECT * FROM [Информация об изделиях]"></asp:SqlDataSource>
    </div>
    <div>
       <h2>Корректировка данных:</h2>
    </div>
    <div>
    
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_изделия" 
            DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Код_изделия" HeaderText="Код изделия" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_изделия" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Наименование_изделия" 
                    HeaderText="Наименование изделия" SortExpression="Наименование_изделия" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Наименование_материала" 
                    HeaderText="Наименование материала" 
                    SortExpression="Наименование_материала" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_материала_на_одно_изделие" 
                    HeaderText="Количество материала на одно изделие" 
                    SortExpression="Количество_материала_на_одно_изделие" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Цена_изделия" HeaderText="Цена изделия" 
                    SortExpression="Цена_изделия" >
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Изделия] WHERE [Код_изделия] = @original_Код_изделия AND [Наименование_изделия] = @original_Наименование_изделия AND [Наименование_материала] = @original_Наименование_материала AND [Количество_материала_на_одно_изделие] = @original_Количество_материала_на_одно_изделие AND [Цена_изделия] = @original_Цена_изделия" 
            InsertCommand="INSERT INTO [Изделия] ([Наименование_изделия], [Наименование_материала], [Количество_материала_на_одно_изделие], [Цена_изделия]) VALUES (@Наименование_изделия, @Наименование_материала, @Количество_материала_на_одно_изделие, @Цена_изделия)" 
            SelectCommand="SELECT * FROM [Изделия]" 
            
            UpdateCommand="UPDATE [Изделия] SET [Наименование_изделия] = @Наименование_изделия, [Наименование_материала] = @Наименование_материала, [Количество_материала_на_одно_изделие] = @Количество_материала_на_одно_изделие, [Цена_изделия] = @Цена_изделия WHERE [Код_изделия] = @original_Код_изделия AND [Наименование_изделия] = @original_Наименование_изделия AND [Наименование_материала] = @original_Наименование_материала AND [Количество_материала_на_одно_изделие] = @original_Количество_материала_на_одно_изделие AND [Цена_изделия] = @original_Цена_изделия" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Код_изделия" Type="Int32" />
                <asp:Parameter Name="original_Наименование_изделия" Type="String" />
                <asp:Parameter Name="original_Наименование_материала" Type="String" />
                <asp:Parameter Name="original_Количество_материала_на_одно_изделие" 
                    Type="Int32" />
                <asp:Parameter Name="original_Цена_изделия" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Наименование_изделия" Type="String" />
                <asp:Parameter Name="Наименование_материала" Type="String" />
                <asp:Parameter Name="Количество_материала_на_одно_изделие" Type="Int32" />
                <asp:Parameter Name="Цена_изделия" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Наименование_изделия" Type="String" />
                <asp:Parameter Name="Наименование_материала" Type="String" />
                <asp:Parameter Name="Количество_материала_на_одно_изделие" Type="Int32" />
                <asp:Parameter Name="Цена_изделия" Type="Int32" />
                <asp:Parameter Name="original_Код_изделия" Type="Int32" />
                <asp:Parameter Name="original_Наименование_изделия" Type="String" />
                <asp:Parameter Name="original_Наименование_материала" Type="String" />
                <asp:Parameter Name="original_Количество_материала_на_одно_изделие" 
                    Type="Int32" />
                <asp:Parameter Name="original_Цена_изделия" Type="Int32" />
            </UpdateParameters>
            
        </asp:SqlDataSource>
        
    
    </div>
    </asp:Content>
