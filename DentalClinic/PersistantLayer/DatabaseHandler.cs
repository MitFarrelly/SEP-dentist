using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Data;

namespace PersistantLayer
{
    public class DatabaseHandler
    {
        OleDbConnection oleConn;
        string connString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source= F:\\DentalClinic\\DentalClinic.accdb"; //add source

        public DatabaseHandler()
        {
            oleConn = new OleDbConnection(connString);
            try
            {
                oleConn.Open();
                oleConn.Close();
            }
            catch (Exception ex)
            {
            }
        }

        public void test(string test)
        {
            try
            {
                oleConn.Open();
                string sql = "INSERT INTO [User] (sf) VALUES ( '" + test + "' )";
                       
                OleDbCommand cmd = new OleDbCommand(sql, oleConn);
                OleDbDataReader reader = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                oleConn.Close();
            }
        }

    }
}
