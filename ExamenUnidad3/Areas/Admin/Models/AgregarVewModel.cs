using ExamenUnidad3.Models;

namespace ExamenUnidad3.Areas.Admin.Models
{
	public class AgregarVewModel
	{
        public int Id { get; set; }
        public string Nombre { get; set; } = null!;
		public IEnumerable<Noticias> Noticias { get; set; }=null!;
	}
}
