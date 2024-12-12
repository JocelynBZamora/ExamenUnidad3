using ExamenUnidad3.Areas.Admin.Models;
using ExamenUnidad3.Models;
using ExamenUnidad3.Repositories;
using Microsoft.AspNetCore.Mvc;
using NuGet.Protocol.Core.Types;

namespace ExamenUnidad3.Areas.Admin.Controllers
{
		[Area("Admin")]

    public class SeccionController : Controller
	{
       public readonly NoticiasRepository _repository;

		public SeccionController(NoticiasRepository repository)
		{
			_repository = repository;
		}

		public IActionResult Index()
        {
            var noticias = _repository.GetAll().Select(x => new AgregarVewModel
            {
                Id = (int)x.Id,
                Nombre = x.Nombre,
            });  
            
            return View(noticias);
        }

        public IActionResult Agregar()
        {

            return View();
        }
        [HttpPost]
        public IActionResult Agregar(AgregarVewModel vm)
        {
            if(string.IsNullOrWhiteSpace(vm.Nombre))
            {
                ModelState.AddModelError("", "Agregue algun nombre");
            }
           if (ModelState.IsValid)
            {
                var Seccion = new Categorias
                {
                    Id = (uint)vm.Id,
                    Nombre = vm.Nombre
                };
                _repository.Add(Seccion);
                return RedirectToAction("Index");

            }
            return View(vm);
        }

        public IActionResult Editar()
        {
            return View();
        }

        public IActionResult Eliminar()
        {
            return View();
        }
    }
}
