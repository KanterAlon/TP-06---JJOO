public class Pais
{
    // Propiedades de lectura y escritura para cada atributo
    public int IdPais { get; set; }
    public string Nombre { get; set; }
    public string Bandera { get; set; }
    public DateTime FechaFundacion { get; set; }

    // Constructor opcional para inicializar los valores
    public Pais(int idPais, string nombre, string bandera, DateTime fechaFundacion)
    {
        IdPais = idPais;
        Nombre = nombre;
        Bandera = bandera;
        FechaFundacion = fechaFundacion;
    }
    public static List<Pais> ListarPaises()
    {   
        var listaPaises = BD.ListarPaises();
        return listaPaises.ToList();
    }

     public static List<Pais> VerInfoPais(int IdPais)
    {   
        var pais = BD.VerInfoPais(IdPais);
        return pais();
    }   

    public static List<Deportista> ListarDeportistasPorPais(int IdPais)
    {   
        var listaDeportistasPorPais = BD.ListarDeportistasPorPais(IdPais);
        return listaDeportistasPorPais.ToList();
    }   
}