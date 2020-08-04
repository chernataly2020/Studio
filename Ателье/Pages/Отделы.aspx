<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Отделы.aspx.cs" Inherits="Ателье.Pages.Отделы" %>
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
        Отделы ателье "Силуэт"
    </h2>
    <p class="style2">
        Ниже представлена информация об отделах ателье "Силуэт". </p>       
    </div>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_отдела" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Код_отдела" HeaderText="Код отдела" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_отдела">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_отдела" HeaderText="Название_отдела" 
                    SortExpression="Название_отдела">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Количество_работающих_сотрудников" 
                    HeaderText="Количество_работающих_сотрудников" 
                    SortExpression="Количество_работающих_сотрудников">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Вид_работ_отдела" HeaderText="Вид_работ_отдела" 
                    SortExpression="Вид_работ_отдела">
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
            DeleteCommand="DELETE FROM [Отделы ателье] WHERE [Код_отдела] = @original_Код_отдела AND [Название_отдела] = @original_Название_отдела AND [Количество_работающих_сотрудников] = @original_Количество_работающих_сотрудников AND [Вид_работ_отдела] = @original_Вид_работ_отдела" 
            InsertCommand="INSERT INTO [Отделы ателье] ([Название_отдела], [Количество_работающих_сотрудников], [Вид_работ_отдела]) VALUES (@Название_отдела, @Количество_работающих_сотрудников, @Вид_работ_отдела)"
            SelectCommand="SELECT * FROM [Отделы ателье]" 
            
            UpdateCommand="UPDATE [Отделы ателье] SET [Название_отдела] = @Название_отдела, [Количество_работающих_сотрудников] = @Количество_работающих_сотрудников, [Вид_работ_отдела] = @Вид_работ_отдела WHERE [Код_отдела] = @original_Код_отдела AND [Название_отдела] = @original_Название_отдела AND [Количество_работающих_сотрудников] = @original_Количество_работающих_сотрудников AND [Вид_работ_отдела] = @original_Вид_работ_отдела" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Код_отдела" Type="Int32" />
                <asp:Parameter Name="original_Название_отдела" Type="String" />
                <asp:Parameter Name="original_Количество_работающих_сотрудников" Type="Int32" />
                <asp:Parameter Name="original_Вид_работ_отдела" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Название_отдела" Type="String" />
                <asp:Parameter Name="Количество_работающих_сотрудников" Type="Int32" />
                <asp:Parameter Name="Вид_работ_отдела" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Название_отдела" Type="String" />
                <asp:Parameter Name="Количество_работающих_сотрудников" Type="Int32" />
                <asp:Parameter Name="Вид_работ_отдела" Type="String" />
                <asp:Parameter Name="original_Код_отдела" Type="Int32" />
                <asp:Parameter Name="original_Название_отдела" Type="String" />
                <asp:Parameter Name="original_Количество_работающих_сотрудников" Type="Int32" />
                <asp:Parameter Name="original_Вид_работ_отдела" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>
