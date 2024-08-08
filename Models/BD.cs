using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
using System.Linq;

public class BD
{
    private static string _connectionString = @"Server=localhost;Database=JJOO;Trusted_Connection=True;";

    public static List<Deportista> LevantarDeportistas()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Deportistas";
            return db.Query<Deportista>(sql).ToList();
        }
    }
}
