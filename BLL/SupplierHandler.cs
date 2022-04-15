using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class SupplierHandler
    {
        SupplierDBAccess supplierDB = null;

        public SupplierHandler()
        {
            supplierDB = new SupplierDBAccess();
        }
        public bool AddSupplier(Supplier supplier)
        {
            return supplierDB.AddSupplier(supplier);
        }
        public bool UpdateSupplier(Supplier supplier)
        {
            return supplierDB.UpdateSupplier(supplier);
        }
        public bool DeleteSupplier(int supplierID)
        {
            return supplierDB.DeleteSupplier(supplierID);
        }
        public Supplier GetSupplier(int supplierID)
        {
            return supplierDB.GetSupplier(supplierID);
        }
        public List<Supplier> ListSupplier()
        {
            return supplierDB.ListSupplier();
        }
    }
}
