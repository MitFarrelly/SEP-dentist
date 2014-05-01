using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PersistantLayer;

namespace BusinessLayer
{
    public class UserController
    {
        public UserController()
        {

        }

        public void Test(string test)
        {
            DatabaseHandler database = new DatabaseHandler();
            database.test(test);
        }
    }
}
