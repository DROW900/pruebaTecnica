using Aplicacion.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Text;
using System.IO;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Aplicacion.Controllers
{
    public class UsuariosController : Controller
    {

        public IConfiguration Configuration { get; }

        public UsuariosController(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IActionResult Usuarios()
        {
            try
            {
                using (SqlConnection con = new(Configuration["ConnectionStrings:conexion"]))
                {
                    using (SqlCommand cmd = new("sp_consultarUsuarios", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        con.Open();
                        SqlDataAdapter da = new(cmd);
                        DataTable dt = new();
                        da.Fill(dt);
                        da.Dispose();
                        List<UsuarioModel> listaUsuarios = new();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            listaUsuarios.Add(new UsuarioModel()
                            {
                                IdUsuario = Convert.ToInt32(dt.Rows[i][0]),
                                Nombre = Convert.ToString(dt.Rows[i][1]),
                                Paterno = Convert.ToString(dt.Rows[i][2]),
                                Materno = Convert.ToString(dt.Rows[i][3]),
                                Sueldo = Convert.ToDouble(dt.Rows[i][4]),
                                FechaIngreso = Convert.ToDateTime(dt.Rows[i][5]).ToString("dd/MM/yyyy")
                            });
                        }
                        ViewBag.Usuarios = listaUsuarios;
                        con.Close();
                    }
                }
                return View();
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPost]
        public IActionResult RegistrarUsuario(UsuarioModel usuario)
        {
            try
            {
                using (SqlConnection con = new(Configuration["ConnectionStrings:conexion"]))
                {
                    using (SqlCommand cmd = new("sp_registrarUsuario", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = usuario.Nombre;
                        cmd.Parameters.Add("@Paterno", System.Data.SqlDbType.VarChar).Value = usuario.Paterno;
                        cmd.Parameters.Add("@Materno", System.Data.SqlDbType.VarChar).Value = usuario.Materno;
                        cmd.Parameters.Add("@Sueldo", System.Data.SqlDbType.Float).Value = usuario.Sueldo;
                        cmd.Parameters.Add("@FechaIngreso", System.Data.SqlDbType.Date).Value = usuario.FechaIngreso;

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return Redirect("Usuarios");
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPut]
        public JsonResult ActualizaSueldo([FromBody] UsuarioModel usuario)
        {
            try
            {
                using (SqlConnection con = new(Configuration["ConnectionStrings:conexion"]))
                {
                    using (SqlCommand cmd = new("sp_actualizarSueldo", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add("@userId", System.Data.SqlDbType.VarChar).Value = usuario.IdUsuario;
                        cmd.Parameters.Add("@sueldo", System.Data.SqlDbType.VarChar).Value = usuario.Sueldo;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return Json( new {mensaje = "Ok"} );
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpGet]
        public IActionResult RegistrarUsuario()
        {
            return View();
        }

        [HttpGet]
        public JsonResult RealizaCSV()
        {
            using (SqlConnection con = new(Configuration["ConnectionStrings:conexion"]))
            {
                using (SqlCommand cmd = new("sp_consultaInfoCSV", con))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    SqlDataAdapter da = new(cmd);
                    DataTable dt = new();
                    da.Fill(dt);
                    da.Dispose();
                    string cadena = "";
                    using (var writer = new StreamWriter("Información.csv", false, Encoding.UTF8))
                    {
                        writer.WriteLine("Login,Nombre Completo,Sueldo,Fecha de ingreso");

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            cadena = Convert.ToString(dt.Rows[i][1]) + "," + Convert.ToString(dt.Rows[i][2]) + " " + Convert.ToString(dt.Rows[i][3]) + " " + Convert.ToString(dt.Rows[i][4]) + "," + Convert.ToString(dt.Rows[i][5]) + "," + Convert.ToString(dt.Rows[i][6]);
                            writer.WriteLine(cadena);
                            cadena = "";
                        }
                    }
                    con.Close();
                }
            }

            return Json(new { mensaje = "Archivo generado correctamente" });
        }
    }
}
