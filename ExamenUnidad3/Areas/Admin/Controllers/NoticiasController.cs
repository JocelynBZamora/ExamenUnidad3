using Microsoft.AspNetCore.Mvc;

namespace ExamenUnidad3.Areas.Admin.Controllers
{
    public class NoticiasController : Controller
    {
    [Area("Admin")]

		public IActionResult Index()
        {
            return View();
        }
    }
}
