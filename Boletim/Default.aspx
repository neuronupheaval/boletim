<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Boletim.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Boletim</title>
    <style type="text/css">
        table {
            margin: 8px auto;
        }
        th {
            padding: 4px;
            background-color: gray;
            color: snow;
            border: 1px solid snow;
        }
        td {
            padding: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvBoletim" runat="server" AutoGenerateColumns="false" EmptyDataText="Nenhum aluno encontrado!">
                <Columns>
                    <asp:BoundField DataField="Materia" HeaderText="Matéria" />
                    <asp:BoundField DataField="Nota1" HeaderText="1a. Nota" ItemStyle-HorizontalAlign="Right" />
                    <asp:BoundField DataField="Nota2" HeaderText="2a. Nota" ItemStyle-HorizontalAlign="Right" />
                    <asp:BoundField DataField="Nota3" HeaderText="3a. Nota" ItemStyle-HorizontalAlign="Right" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
