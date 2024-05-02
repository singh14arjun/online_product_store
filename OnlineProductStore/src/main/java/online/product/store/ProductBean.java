package online.product.store;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ProductBean implements Serializable
{
	private String productcode,productname;
	private int productqty;
	private double productprice;
	
	public String getProductcode() {
		return productcode;
	}
	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getProductqty() {
		return productqty;
	}
	public void setProductqty(int productqty) {
		this.productqty = productqty;
	}
	public double getProductprice() {
		return productprice;
	}
	public void setProductprice(double productprice) {
		this.productprice = productprice;
	}

	
}
