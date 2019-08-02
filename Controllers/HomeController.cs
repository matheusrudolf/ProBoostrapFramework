using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProBoostrapFramework.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index() => View();
        public IActionResult Formulario() => View();
        public IActionResult CheckRadio() => View();
        public IActionResult Tabela() => View();
        public IActionResult Cards() => View();
    }
}
