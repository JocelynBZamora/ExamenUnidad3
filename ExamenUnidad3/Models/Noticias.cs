using System;
using System.Collections.Generic;

namespace ExamenUnidad3.Models;

public partial class Noticias
{
    public uint Id { get; set; }

    public string Titulo { get; set; } = null!;

    public DateOnly Fecha { get; set; }

    public string Contenido { get; set; } = null!;

    public DateTime FechaPublicacion { get; set; }

    public ulong Vistas { get; set; }

    public uint IdCategoria { get; set; }

    public virtual Categorias IdCategoriaNavigation { get; set; } = null!;
}
