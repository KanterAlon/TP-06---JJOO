using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
using System.Linq;

public class BD
{
    //private static string _connectionString = @"Server=186.19.182.109\SQLEXPRESS,1433;Database=JJOO;User Id=sa;Password=barpetalon10";

    public static string _connectionString = @"Server=localhost;Database=JJOO;Trusted_Connection=True;";

    public static void AgregarDeportista(Deportista dep)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO Deportistas (Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) " +
                        "VALUES (@Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte)";
            db.Execute(sql, dep);
        }
    }


    public static void EliminarDeportista(int idDeportista)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista";
            db.Execute(sql, new { IdDeportista = idDeportista });
        }
    }

    public static Deporte VerInfoDeporte(int idDeporte)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportes WHERE IdDeporte = @IdDeporte";
            return db.QueryFirstOrDefault<Deporte>(sql, new { IdDeporte = idDeporte });
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

    public static Deportista VerInfoDeportista(int idDeportista)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportistas WHERE IdDeportista = @IdDeportista";
            return db.QueryFirstOrDefault<Deportista>(sql, new { IdDeportista = idDeportista });
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

    public static List<Deportista> ListarDeportistas(int idDeporte)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportistas WHERE IdDeporte = @IdDeporte";
            return db.Query<Deportista>(sql, new { IdDeporte = idDeporte }).ToList();
        }
    }

    public static List<Deportista> ListarDeportistasPorPais(int idPais)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportistas WHERE IdPais = @IdPais";
            return db.Query<Deportista>(sql, new { IdPais = idPais }).ToList();
        }
    }

    public static List<Deportista> LevantarDeportistas()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportistas";
            return db.Query<Deportista>(sql).ToList();
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