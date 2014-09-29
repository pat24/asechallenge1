using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;


namespace Restservice
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "itemsdata")]
        public Item QueryInfo()
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            //Open the connection
            conn.Open();

            string ina = "";
            string p = "";
            string we = "";
            string whbuy = "";

            //Declare the sql command
            SqlCommand cmd = new SqlCommand("Select * From data", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                ina = ina + ";" + reader["iname"];
                p = p + ";" + reader["price"].ToString();
                we = we + ";" + reader["weight"].ToString();
                whbuy = whbuy + ";" + reader["wherebuy"].ToString();
            }
            reader.Close();
            //close the connection
            conn.Close();


            //Open the connection
            // lookup person with the requested id 
            return new Item()
            {
                iname = ina,
                price = p,
                weight = we,
                wherebuy = whbuy

            };
        }

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
        public string GetDateTime()
        {
            return DateTime.Now.ToString();
        }

    }
    public class Item
    {

        public string iname { get; set; }

        public string price { get; set; }

        public string weight { get; set; }

        public string wherebuy { get; set; }

    }


}
