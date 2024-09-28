package entities;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;
    
    @Column(name = "sale_price")
    private Double salePrice;

    @Column(name = "image")
    private String image;
    
    @Column(name = "content")
    private String content;
    
    @Column(name = "status")
    private Integer status;
    
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
    
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", salePrice=" + salePrice +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", status=" + status +
                ", category=" + (category != null ? category.getName() : "null") +
                '}';
    }
    
	public Product() {
		super();
	}

	public Product(Integer id, String name, Double price, Double salePrice, String image, String content,
			Integer status, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.salePrice = salePrice;
		this.image = image;
		this.content = content;
		this.status = status;
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

    
}
