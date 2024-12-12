using ExamenUnidad3.Models;

namespace ExamenUnidad3.Repositories
{
	public class NoticiasRepository
	{
		WebnoticiasContext _context;


		public IEnumerable<Categorias> GetAll() =>_context.Categorias.OrderBy(c => c.Nombre);
		public Categorias? Get(int Id) => _context.Categorias.Find(Id);
		public NoticiasRepository(WebnoticiasContext context)
		{
			_context = context;
		}
		public void Add(Categorias categorias) 
		{
			_context.Add(categorias);
			_context.SaveChanges();
		}
		public void Update(Categorias categorias)
		{
			_context.Update(categorias);
			_context.SaveChanges();
		}
		public void Delete(Categorias categorias) 
		{
			_context.Remove(categorias);
			_context.SaveChanges();	
		}
	}
}
