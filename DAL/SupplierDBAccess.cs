using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class SupplierDBAccess
    {
        #region AddSupplier()
        public bool AddSupplier(Supplier supplier)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@CompanyName", supplier.CompanyName),
                new SqlParameter("@ContactTitle", supplier.ContactTitle),
                new SqlParameter("@Address", supplier.Address),
                new SqlParameter("@City", supplier.City),
                new SqlParameter("@Region", supplier.Region),
                new SqlParameter("@PostalCode", supplier.PostalCode),
                new SqlParameter("@Country", supplier.Country),
                new SqlParameter("@Phone", supplier.Phone),
                new SqlParameter("@Fax", supplier.Fax),
                new SqlParameter("@HomePage", supplier.HomePage)
            };
            return DBHelper.ExecuteNonQuery("sp_AddSupplier", CommandType.StoredProcedure,
                parameters);
        }
        #endregion AddSupplier()

        #region UpdateSupplier()
        public bool UpdateSupplier(Supplier supplier)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@SupplierID", supplier.SupplierID),
                new SqlParameter("@CompanyName", supplier.CompanyName),
                new SqlParameter("@ContactTitle", supplier.ContactTitle),
                new SqlParameter("@Address", supplier.Address),
                new SqlParameter("@City", supplier.City),
                new SqlParameter("@Region", supplier.Region),
                new SqlParameter("@PostalCode", supplier.PostalCode),
                new SqlParameter("@Country", supplier.Country),
                new SqlParameter("@Phone", supplier.Phone),
                new SqlParameter("@Fax", supplier.Fax),
                new SqlParameter("@HomePage", supplier.HomePage)
            };
            return DBHelper.ExecuteNonQuery("sp_UpdateSupplier", CommandType.StoredProcedure,
                parameters);
        }
        #endregion UpdateSupplier()

        #region DeleteSupplier()
        public bool DeleteSupplier(int supplierID)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@SupplierID", supplierID)
            };
            return DBHelper.ExecuteNonQuery("sp_DeleteSupplier", CommandType.StoredProcedure,
                parameters);
        }
        #endregion DeleteSupplier()

        #region GetSupplier()
        public Supplier GetSupplier(int supplierID)
        {
            Supplier supplier = null;
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@SupplierID", supplierID)
            };
            using (DataTable table = DBHelper.ExecuteParamerizedSelectCommand("sp_GetSupplier",
                CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    supplier = new Supplier();
                    supplier.SupplierID = Convert.ToInt32(row["SupplierID"]);
                    supplier.CompanyName = row["CompanyName"].ToString();
                    supplier.ContactTitle = row["ContactTitle"].ToString();
                    supplier.Address = row["Address"].ToString();
                    supplier.City = row["City"].ToString();
                    supplier.Region = row["Region"].ToString();
                    supplier.PostalCode = row["PostalCode"].ToString();
                    supplier.Country = row["Country"].ToString();
                    supplier.Phone = row["Phone"].ToString();
                    supplier.Fax = row["Fax"].ToString();
                    supplier.HomePage = row["HomePage"].ToString();
                    
                }//end if
            }//end using
            return supplier;
        }
        #endregion GetSupplier()

        #region ListSupplier()
        public List<Supplier> ListSupplier()
        {
            List<Supplier> listSupplier = null;

            using (DataTable table = DBHelper.ExecuteSelectCommand("sp_ListSupplier",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    listSupplier = new List<Supplier>();
                    foreach (DataRow row in table.Rows)
                    {
                        Supplier supplier = new Supplier();
                        supplier.SupplierID = Convert.ToInt32(row["SupplierID"]);
                        supplier.CompanyName = row["CompanyName"].ToString();
                        supplier.ContactTitle = row["ContactTitle"].ToString();
                        supplier.Address = row["Address"].ToString();
                        supplier.City = row["City"].ToString();
                        supplier.Region = row["Region"].ToString();
                        supplier.PostalCode = row["PostalCode"].ToString();
                        supplier.Country = row["Country"].ToString();
                        supplier.Phone = row["Phone"].ToString();
                        supplier.Fax = row["Fax"].ToString();
                        supplier.HomePage = row["HomePage"].ToString();
                        listSupplier.Add(supplier);
                    }
                }//end if
            }//end using
            return listSupplier;
        }
        #endregion ListSupplier()

    }
 }
