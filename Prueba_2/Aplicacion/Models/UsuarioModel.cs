namespace Aplicacion.Models
{
    public class UsuarioModel
    {
        public int IdUsuario { get; set; }
        public string Login { get; set; }
        public string Nombre { get; set; }
        public string Paterno { get; set; }
        public string Materno { get; set; }
        public double Sueldo { get; set; }
        public string FechaIngreso { get; set; }

    }
}
