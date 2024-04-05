namespace Core.Entities;

public class ProductRating
{
    public Guid ProductRatingId { get; set; }
    public double Rating { get; set; }
    public Product Product { get; set; }
}