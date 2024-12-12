using ExamenUnidad3.Models;
using ExamenUnidad3.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddMvc();

builder.Services.AddDbContext<WebnoticiasContext>(opt => opt.UseMySql("server=localhost;user=root;password=root;database=webnoticias", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.36-mysql")));
builder.Services.AddTransient<NoticiasRepository>();

var app = builder.Build();


app.UseStaticFiles();
app.MapAreaControllerRoute(
    name: "areas",
    areaName: "Admin",
    pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
    );

app.MapDefaultControllerRoute();

app.Run();
