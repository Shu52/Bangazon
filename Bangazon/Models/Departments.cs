﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bangazon.Models
{
    public class Departments
    {
        public int id { get; set; }
        public int SuperviorId { get; set; }
        public string Name { get; set; }
    }
}
