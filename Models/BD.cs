using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
using System.Linq;

public class BD
{
    private static string _connectionString = @"Server=localhost;Database=JJOO;Trusted_Connection=True;";

    public static void AgregarDeportista(Deportista dep)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spAgregarDeportista";
            db.Execute(sql, new
            {
                dep.Apellido,
                dep.Nombre,
                dep.FechaNacimiento,
                dep.Foto,
                dep.IdPais,
                dep.IdDeporte
            }, commandType: System.Data.CommandType.StoredProcedure);
        }
    }

    public static void EliminarDeportista(int idDeportista)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spEliminarDeportista";
            db.Execute(sql, new { IdDeportista = idDeportista }, commandType: System.Data.CommandType.StoredProcedure);
        }
    }

    public static Pais VerInfoPais(int idPais)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Paises WHERE IdPais = @IdPais";
            return db.QueryFirstOrDefault<Pais>(sql, new { IdPais = idPais });
        }
    }

    public static List<Deportista> ListarDeportistasPorPais(int idPais)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spListarDeportistasPorPais";
            return db.Query<Deportista>(sql, new { IdPais = idPais }, commandType: System.Data.CommandType.StoredProcedure).ToList();
        }
    }

    public static Deporte VerInfoDeporte(int idDeporte)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spVerInfoDeporte";
            return db.QueryFirstOrDefault<Deporte>(sql, new { IdDeporte = idDeporte }, commandType: System.Data.CommandType.StoredProcedure);
        }
    }

    public static Deportista VerInfoDeportista(int idDeportista)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spVerInfoDeportista";
            return db.QueryFirstOrDefault<Deportista>(sql, new { IdDeportista = idDeportista }, commandType: System.Data.CommandType.StoredProcedure);
        }
    }

public static Deportista BuscarDeportistaPorNombre(string nombreDeportista)
{
    using (SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Deportistas WHERE CONCAT(Nombre, ' ', Apellido) LIKE @NombreDeportista";
        return db.QueryFirstOrDefault<Deportista>(sql, new { NombreDeportista = "%" + nombreDeportista + "%" });
    }
}





    public static List<Deportista> ListarDeportistas(int idDeporte)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "spListarDeportistasPorDeporte";
            return db.Query<Deportista>(sql, new { IdDeporte = idDeporte }, commandType: System.Data.CommandType.StoredProcedure).ToList();
        }
    }

    public static List<Pais> ListarPaises()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Paises";
            return db.Query<Pais>(sql).ToList();
        }
    }

    public static List<Deporte> ListarDeportes()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportes";
            return db.Query<Deporte>(sql).ToList();
        }
    }
}