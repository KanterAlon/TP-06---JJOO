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
}