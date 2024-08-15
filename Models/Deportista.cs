public class Deportista
{
    public int IdDeportista { get; set; }
    public string Apellido { get; set; }
    public string Nombre { get; set; }
    public DateTime FechaNacimiento { get; set; }
    public string Foto { get; set; }
    public int IdPais { get; set; }
    public int IdDeporte { get; set; }


    public Deportista(int idDeportista, string apellido, string nombre, DateTime fechaNacimiento, string foto, int idPais, int idDeporte)
    {
        IdDeportista = idDeportista;
        Apellido = apellido;
        Nombre = nombre;
        FechaNacimiento = fechaNacimiento;
        Foto = foto;
        IdPais = idPais;
        IdDeporte = idDeporte;
    }

    public Deportista() { }
    
    public static Deportista VerInfoDeportista(int idDeportista)
    {
        var deportista = BD.VerInfoDeportista(idDeportista);
        return deportista;
    }

    public static List<Deportista> ListarDeportistas(int idDeportista) {
        var listaDeportistas = BD.ListarDeportistas(idDeportista);
        return listaDeportistas.ToList();
    }
    public static void AgregarDeportista(Deportista dep)
    {
        BD.AgregarDeportista(dep);
    }
    public static void EliminarDeportista(int idCandidato)
    {
        BD.EliminarDeportista(idCandidato);
    }

    
}