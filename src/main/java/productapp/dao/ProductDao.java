package productapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import productapp.model.Product;

public class ProductDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("venky");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
	
	public void saveProduct (Product product) {
		entityTransaction.begin();
		entityManager.persist(product);
		entityTransaction.commit();
	}
	
	public void deleteProduct (int id) {
		Product product = entityManager.find (Product.class, id);
		entityTransaction.begin();
		entityManager.remove(product);
		entityTransaction.commit();
	}
	
	public void updateProduct (Product product) {
		entityTransaction.begin();
		entityManager.merge(product);
		entityTransaction.commit();
	}
	
	public Product getProductById (int id) {
		Product product = entityManager.find(Product.class, id);
		return product;
	}
	
	public List <Product> getAllProducts () {
		Query query = entityManager.createQuery("select p from Product p");
		@SuppressWarnings("unchecked")
		List <Product> products = query.getResultList();
		return products;
	}
	
}
