using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP06_JJOO.Models;

namespace TP06_JJOO.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }


        public IActionResult Deportes()
    {
        var listaDeportes = BD.ListarDeportes();
        ViewBag.Deportes = listaDeportes;
        return View();
    }
        public IActionResult Paises()
    {
        var listaPaises = BD.ListarPaises();
        ViewBag.Paises = listaPaises;
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte)
{
    var deporte = BD.VerInfoDeporte(idDeporte);
    var deportistas = BD.ListarDeportistas(idDeporte);
    ViewBag.Deporte = deporte;
    ViewBag.Deportistas = deportistas;
    return View();
}

public IActionResult VerDetallePais(int idPais)
{
    var pais = BD.VerInfoPais(idPais);
    var deportistas = BD.ListarDeportistasPorPais(idPais);
    ViewBag.Pais = pais;
    ViewBag.Deportistas = deportistas;
    return View();
}
public IActionResult VerDetalleDeportista(int idDeportista)
{
    var deportista = BD.VerInfoDeportista(idDeportista);
    ViewBag.Deportista = deportista;
    return View();
}

public IActionResult AgregarDeportista()
{
    var paises = BD.ListarPaises();
    var deportes = BD.ListarDeportes();
    ViewBag.Paises = paises;
    ViewBag.Deportes = deportes;
    return View();
}

[HttpPost]
public IActionResult GuardarDeportista(Deportista dep)
{
    BD.AgregarDeportista(dep);
    return RedirectToAction("Index");
}

public IActionResult EliminarDeportista(int idCandidato)
{
    BD.EliminarDeportista(idCandidato);
    return RedirectToAction("Index");
}

public IActionResult Creditos()
{
    return View();
}




}
