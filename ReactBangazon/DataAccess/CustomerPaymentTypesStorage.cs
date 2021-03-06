﻿using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bangazon.DataAccess
{
    public class CustomerPaymentTypesStorage
    {
        private readonly string ConnectionString;

        public CustomerPaymentTypesStorage(IConfiguration config)
        {
            ConnectionString = config.GetSection("ConnectionString").Value;
        }

        // API functions go here, use ConnectionString for new SqlConnection

    }
}
