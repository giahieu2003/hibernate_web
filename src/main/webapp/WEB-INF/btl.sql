CREATE DATABASE btl;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,      
    name VARCHAR(255),           
    status INTEGER                
);


CREATE TABLE products (
    id SERIAL PRIMARY KEY,                    
    name VARCHAR(255),                         
    price NUMERIC(10, 2),                      
    sale_price NUMERIC(10, 2),                 
    image VARCHAR(255),                        
    content TEXT,                              
    status INTEGER,                            
    category_id INTEGER,                       
    FOREIGN KEY (category_id) REFERENCES categories(id)
);


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,                
    username VARCHAR(255) NOT NULL UNIQUE,     
    email VARCHAR(255) NOT NULL UNIQUE,        
    password VARCHAR(255) NOT NULL              
);


CREATE TABLE cart_items (
    id SERIAL PRIMARY KEY,                  
    product_id INTEGER NOT NULL,            
    quantity INTEGER NOT NULL,              
    user_id INTEGER NOT NULL,               
    FOREIGN KEY (product_id) REFERENCES products(id),  
    FOREIGN KEY (user_id) REFERENCES users(user_id)    
);


CREATE TABLE account (
    id SERIAL PRIMARY KEY,                
    accountname VARCHAR(255) NOT NULL UNIQUE, 
    password VARCHAR(255) NOT NULL       
);