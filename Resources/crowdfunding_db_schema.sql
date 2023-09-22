CREATE TABLE categories (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

CREATE TABLE campaign (
    cf_id INT,
    contact_id INT PRIMARY KEY,
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count FLOAT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

-- DROP TABLE categories;
-- DROP TABLE subcategories;
-- DROP TABLE campaign;
-- DROP TABLE contacts;

SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM campaign;
SELECT * FROM contacts;