import React from "react";
//import { useParams } from "react-router-dom";
import withAuth from "../components/withAuth";

const Products = ({products}) => {
    if (products == null) {
        console.log("products is null");
    }
//  fetchProducts()
  return (
    <div>
      <h1 className="title is-1">This is the Products Page</h1>
          {products.map((product) => (
            <div class="card">
              <div class="card-body">
                <div class="card-title">{product.product_descr}</div>
                <div class="card-subtitle mb-2 text-muted">{product.case_gtin}</div>
              </div>
            </div>
          ))}
    </div>
  );
};

export default withAuth(Products);

// const productFetcher =  fetchProducts() => {
// fetch('http://localhost:8080/products')
//         .then(res => res.json())
//         .then((data) => {
//           this.setState({ products: data })
//         })
//         .catch(console.log)
//         console.log("set products")
// }