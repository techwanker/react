import React, { Component } from 'react';
import { BrowserRouter, Switch, Route } from "react-router-dom";

import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import About from "./pages/About";
import Profile from "./pages/Profile";
import Loads from "./pages/Loads";
import Products from "./pages/Products"
class App extends Component {
  state = {
        products: []
      }
  render() {
  return (
    <BrowserRouter>
      <Navbar />
      <div className="container mt-2" style={{ marginTop: 40 }}>
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Route path="/about">
            <About />
          </Route>
          <Route path="/profile/:name">
            <Profile />
          </Route>
          <Route path="/products">
            <Products />
          </Route>
          <Route path="/loads">
            <Loads />
          </Route>

        </Switch>
      </div>
    </BrowserRouter>
  );
}

      componentDidMount() {
        fetch('http://localhost:8080/products')
        .then(res => res.json())
        .then((data) => {
          this.setState({ products: data })
        })
        .catch(console.log)
        console.log("set products")
      }
}


export default App;
