﻿using Bangazon.Models;
using Dapper;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Bangazon.DataAccess
{
    public class PaymentTypesStorage
    {
        private readonly string ConnectionString;

        public PaymentTypesStorage(IConfiguration config)
        {
            ConnectionString = config.GetSection("ConnectionString").Value;
        }

        // Getting ListofPayment Types
        public List<PaymentTypes> GetPayementTypes()
        {
            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();

                var result = db.Query<PaymentTypes>(@"select Name, ID from PaymentTypes");

                return result.ToList();

            }
        }

        // Getting singlePaymentType
        public List<PaymentTypes> GetSinglePaymentType(int Id)
        {
            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();
                var result = db.Query<PaymentTypes>(@"Select Name, id from PaymentTypes
                                                  where Id = @Id", new { Id = Id });
                return result.ToList();
            }
        }

        //Posting NewPaymentType
        public bool AddPaymentType(PaymentTypes paymentType)
        {
            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();
                var result = db.Execute(@"INSERT INTO [dbo].[PaymentTypes]
                                       ([Name]) VALUES (@Name)", paymentType);
                return result == 1;
            }
        }

        // Put/updating Pyament Type
        public bool UpdatePaymentType(PaymentTypes paymentType)
        {
            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();
                var result = db.Execute(@"UPDATE [dbo].[PaymentTypes]
                                         SET Name = @Name
                                         where [Id] = @Id", paymentType);
                return result == 1;
            }
        }

        public bool DeleteById(int Id)
        {
            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();
                var result = db.Execute(@"Delete from PaymentTypes
                                          where id = @id", new { id = Id });
                return result == 1;
            }
        }

    }

  
}
