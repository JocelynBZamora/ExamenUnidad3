using System;
using System.Collections.Generic;

namespace ExamenUnidad3.Models;

public partial class Categorias
{
    public uint Id { get; set; }

    public string Nombre { get; set; } = null!;

    public virtual ICollection<Noticias> Noticias { get; set; } = new List<Noticias>();
}
