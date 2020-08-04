<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Отдел кадров.aspx.cs" Inherits="Ателье.Pages.Отдел_кадров" %>
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
        Отдел кадров ателье "Силуэт"
    </h2>
    <p class="style2">
        Ниже представлена информация о сотрудниках ателье "Силуэт". Для обновления данных 
        после корректировки следует перезагрузить страницу или временно сменить текущую страницу.</p>       
    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Табельный_номер" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Табельный_номер" HeaderText="Табельный номер" 
                    ReadOnly="True" SortExpression="Табельный_номер">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ФИО_сотрудника" HeaderText="ФИО сотрудника" 
                    SortExpression="ФИО_сотрудника">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Название_отдела" HeaderText="Название отдела" 
                    SortExpression="Название_отдела">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Должность" HeaderText="Должность" 
                    SortExpression="Должность">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_рождения" DataFormatString="{0:d}" 
                    HeaderText="Дата рождения" SortExpression="Дата_рождения">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Домашний_адрес" HeaderText="Домашний адрес" 
                    SortExpression="Домашний_адрес">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Телефон" HeaderText="Телефон" 
                    SortExpression="Телефон">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
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
            SelectCommand="SELECT * FROM [Информация о сотрудниках]">
        </asp:SqlDataSource>
    </div>
    <div>
       <h2>Корректировка данных:</h2>
    </div>
    <div>
    
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Табельный_номер" DataSourceID="SqlDataSource2" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Табельный_номер" HeaderText="Табельный номер" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Табельный_номер">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ФИО_сотрудника" HeaderText="ФИО сотрудника" 
                    SortExpression="ФИО_сотрудника">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="Дата_рождения" DataFormatString="{0:d}" 
                    HeaderText="Дата рождения" SortExpression="Дата_рождения">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Домашний_адрес" HeaderText="Домашний адрес" 
                    SortExpression="Домашний_адрес">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Телефон" HeaderText="Телефон" 
                    SortExpression="Телефон">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Отдел" HeaderText="Код отдела" 
                    SortExpression="Отдел">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Должность" HeaderText="Должность" 
                    SortExpression="Должность">
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
            DeleteCommand="DELETE FROM [Отдел кадров] WHERE [Табельный_номер] = @original_Табельный_номер AND [ФИО_сотрудника] = @original_ФИО_сотрудника AND [Дата_рождения] = @original_Дата_рождения AND [Домашний_адрес] = @original_Домашний_адрес AND [Телефон] = @original_Телефон AND [Отдел] = @original_Отдел AND (([Должность] = @original_Должность) OR ([Должность] IS NULL AND @original_Должность IS NULL))" 
            InsertCommand="INSERT INTO [Отдел кадров] ([ФИО_сотрудника], [Дата_рождения], [Домашний_адрес], [Телефон], [Отдел], [Должность]) VALUES (@ФИО_сотрудника, @Дата_рождения, @Домашний_адрес, @Телефон, @Отдел, @Должность)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Отдел кадров]" 
            UpdateCommand="UPDATE [Отдел кадров] SET [ФИО_сотрудника] = @ФИО_сотрудника, [Дата_рождения] = @Дата_рождения, [Домашний_адрес] = @Домашний_адрес, [Телефон] = @Телефон, [Отдел] = @Отдел, [Должность] = @Должность WHERE [Табельный_номер] = @original_Табельный_номер AND [ФИО_сотрудника] = @original_ФИО_сотрудника AND [Дата_рождения] = @original_Дата_рождения AND [Домашний_адрес] = @original_Домашний_адрес AND [Телефон] = @original_Телефон AND [Отдел] = @original_Отдел AND (([Должность] = @original_Должность) OR ([Должность] IS NULL AND @original_Должность IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Табельный_номер" Type="Int32" />
                <asp:Parameter Name="original_ФИО_сотрудника" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Дата_рождения" />
                <asp:Parameter Name="original_Домашний_адрес" Type="String" />
                <asp:Parameter Name="original_Телефон" Type="String" />
                <asp:Parameter Name="original_Отдел" Type="Int32" />
                <asp:Parameter Name="original_Должность" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ФИО_сотрудника" Type="String" />
                <asp:Parameter DbType="Date" Name="Дата_рождения" />
                <asp:Parameter Name="Домашний_адрес" Type="String" />
                <asp:Parameter Name="Телефон" Type="String" />
                <asp:Parameter Name="Отдел" Type="Int32" />
                <asp:Parameter Name="Должность" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ФИО_сотрудника" Type="String" />
                <asp:Parameter DbType="Date" Name="Дата_рождения" />
                <asp:Parameter Name="Домашний_адрес" Type="String" />
                <asp:Parameter Name="Телефон" Type="String" />
                <asp:Parameter Name="Отдел" Type="Int32" />
                <asp:Parameter Name="Должность" Type="String" />
                <asp:Parameter Name="original_Табельный_номер" Type="Int32" />
                <asp:Parameter Name="original_ФИО_сотрудника" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Дата_рождения" />
                <asp:Parameter Name="original_Домашний_адрес" Type="String" />
                <asp:Parameter Name="original_Телефон" Type="String" />
                <asp:Parameter Name="original_Отдел" Type="Int32" />
                <asp:Parameter Name="original_Должность" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>
