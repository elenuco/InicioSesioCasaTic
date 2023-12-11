<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="InicioSesion.InicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" ></script>
</head>
<body class="form-control bg-light">
    <div class="container-small">
        <div class="row">
            <h1>Formulario de registro</h1>
            <div class="col">
                <form id="formulario_registro" runat="server">
                    <div>
                        <fieldset>
                            <legend>Datos Personales</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" Text="nombres" ID="lblNombres"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbNombres" placeholder="Ej. Juan Pablo"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" Text="Apellidos" ID="lblApellidos"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbApellidos" placeholder="Ej. Amaya Soto"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" Text="Fecha de nacimiento" ID="lblFechaNacimiento"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbFechaNacimiento" TextMode="Date"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <hr />
                        <fieldset>
                            <legend>Datos Log in</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                         <asp:Label runat="server" Text="Nombre de Usuario" ID="lblUsuario"></asp:Label>
                                     </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbUsuario" placeholder="Ej. JuanH001"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                         <asp:Label runat="server" Text="Contrasenia" ID="lblPassword"></asp:Label>
                                     </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbPassword" placeholder="Ej. Contrasenia"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" Text="Confirmar Contrasenia" ID="lblConfirmarPassword"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbConfirmarPassword" placeholder="Ej. Contrasenia"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                       <asp:Label runat="server"  ID="lblError" CssClass="aler-danger"></asp:Label>
                                        <asp:Label runat="server"  ID="lblErrorPassword" CssClass="bg-warning"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br />
                        <div>
                            <asp:Button runat="server" ID="BtnRegistrar" Text="Registrar" CssClass="btn btn-dark btnprimary" OnClick="BtnRegistrar_Click"/>
                        </div>
                    </div>
                </form>
                <div class="col">
                    <asp:DataGrid runat="server" ID="gvUsuarios" CssClass="table" />
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>
