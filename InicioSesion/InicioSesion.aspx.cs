using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace InicioSesion
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = " ";
            lblErrorPassword.Text = " ";
            
        }
        SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionBD"].ConnectionString);
        void Limpiar()
        {
            tbNombres.Text = " ";
            tbApellidos.Text = " ";
            tbFechaNacimiento.Text = " ";
            tbUsuario.Text = " ";
            tbPassword.Text = " ";
            tbConfirmarPassword.Text = " ";
            lblError.Text = " ";
            lblErrorPassword.Text = " ";
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            if (tbNombres.Text=="" || tbApellidos.Text==""|| tbFechaNacimiento.Text=="" || tbUsuario.Text==""||tbPassword.Text==""||tbConfirmarPassword.Text=="")
            {
                lblError.Text = "No pueden crear campos Vacíos";
            }
            else
            {
                if (tbConfirmarPassword.Text!=tbPassword.Text|| tbPassword.Text!=tbConfirmarPassword.Text)
                {
                    lblErrorPassword.Text = "las Contraseñas no son iguales";
                }
            }

        }
    }
}