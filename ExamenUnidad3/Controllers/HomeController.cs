﻿using Microsoft.AspNetCore.Mvc;

namespace ExamenUnidad3.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
