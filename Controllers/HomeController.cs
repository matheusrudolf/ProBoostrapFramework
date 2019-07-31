using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProBoostrapFramework.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index() => View();
    }
}
