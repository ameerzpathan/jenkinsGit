﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Calculator.Web.Startup))]
namespace Calculator.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
