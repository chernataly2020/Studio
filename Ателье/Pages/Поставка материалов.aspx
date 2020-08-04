<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Поставка материалов.aspx.cs" Inherits="Ателье.Pages.Поставка_материалов" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        .style1
        {
            font-size: large;
        text-align: right;
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
        Поставка материала
    </h2>
    <p class="style2">
        Ниже представлена информация о поставках материалов для пошива изделий в ателье "Силуэт". </p>       
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Код_поставщика" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Код_поставщика" HeaderText="Код поставщика" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_поставщика">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_поставщика" 
                    HeaderText="Название поставщика" SortExpression="Название_поставщика">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_материала" HeaderText="Название материала" 
                    SortExpression="Название_материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_поставленного_материала" 
                    HeaderText="Количество поставленного материала" 
                    SortExpression="Количество_поставленного_материала">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_поставки" DataFormatString="{0:d}" 
                    HeaderText="Дата поставки" SortExpression="Дата_поставки">
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
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Поставка материала] WHERE [Код_поставщика] = @original_Код_поставщика AND [Название_поставщика] = @original_Название_поставщика AND [Название_материала] = @original_Название_материала AND [Количество_поставленного_материала] = @original_Количество_поставленного_материала AND [Цена] = @original_Цена AND [Дата_поставки] = @original_Дата_поставки" 
            InsertCommand="INSERT INTO [Поставка материала] ([Название_поставщика], [Название_материала], [Количество_поставленного_материала], [Цена], [Дата_поставки]) VALUES (@Название_поставщика, @Название_материала, @Количество_поставленного_материала, @Цена, @Дата_поставки)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Поставка материала]" 
            
            UpdateCommand="UPDATE [Поставка материала] SET [Название_поставщика] = @Название_поставщика, [Название_материала] = @Название_материала, [Количество_поставленного_материала] = @Количество_поставленного_материала, [Цена] = @Цена, [Дата_поставки] = @Дата_поставки WHERE [Код_поставщика] = @original_Код_поставщика AND [Название_поставщика] = @original_Название_поставщика AND [Название_материала] = @original_Название_материала AND [Количество_поставленного_материала] = @original_Количество_поставленного_материала AND [Цена] = @original_Цена AND [Дата_поставки] = @original_Дата_поставки">
            <DeleteParameters>
                <asp:Parameter Name="original_Код_поставщика" Type="Int32" />
                <asp:Parameter Name="original_Название_поставщика" Type="String" />
                <asp:Parameter Name="original_Название_материала" Type="String" />
                <asp:Parameter Name="original_Количество_поставленного_материала" 
                    Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Дата_поставки" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Название_поставщика" Type="String" />
                <asp:Parameter Name="Название_материала" Type="String" />
                <asp:Parameter Name="Количество_поставленного_материала" Type="Int32" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Дата_поставки" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Название_поставщика" Type="String" />
                <asp:Parameter Name="Название_материала" Type="String" />
                <asp:Parameter Name="Количество_поставленного_материала" Type="Int32" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Дата_поставки" />
                <asp:Parameter Name="original_Код_поставщика" Type="Int32" />
                <asp:Parameter Name="original_Название_поставщика" Type="String" />
                <asp:Parameter Name="original_Название_материала" Type="String" />
                <asp:Parameter Name="original_Количество_поставленного_материала" 
                    Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Дата_поставки" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
