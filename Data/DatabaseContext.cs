using Microsoft.EntityFrameworkCore;
using System.Net;
using Core.Entities;


namespace Data
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
        { }

        public DatabaseContext()
        { }

        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>(ent =>
            {
                ent.HasKey(p => p.ProductId);
                ent.Property(p => p.ProductId).ValueGeneratedOnAdd();

                ent.Property(p => p.Name).IsRequired()
                .HasMaxLength(50);

                ent.Property(p => p.Price).IsRequired(false);
            });

            modelBuilder.Entity<Category>(ent =>
            {
                ent.HasKey(c => c.CategoryId);
                ent.Property(c => c.CategoryId).ValueGeneratedOnAdd();

                ent.Property(c => c.CategoryName).IsRequired()
                    .HasMaxLength(50);
            });
            
        }
    }
}
