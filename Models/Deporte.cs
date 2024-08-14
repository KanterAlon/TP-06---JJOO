public class Deporte
{
    // Propiedades de lectura y escritura para cada atributo
    public int IdDeporte { get; set; }
    public string Nombre { get; set; }
    public string Foto { get; set; }

    // Constructor opcional para inicializar los valores
    public Deporte(int idDeporte, string nombre, string foto)
    {
        IdDeporte = idDeporte;
        Nombre = nombre;
        Foto = foto;
    }
    public static List<Deporte> ListarDeportes()
    {   
        var listaDeportes = BD.ListarDeportes();
        return listaDeportes.ToList();
    }

    public static Deporte VerInfoDeporte(int idDeporte)
    {
        var deporte = BD.VerInfoDeporte(idDeporte);
        return deporte;
    }

}