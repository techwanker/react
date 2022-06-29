import React, { useEffect } from "react";
import { useParams } from "react-router-dom";
import withAuth from "../components/withAuth";
import axios from 'axios';

const Loads = () => {
  const { name } = useParams();
  const [loads, setLoads] = React.useState([])

  useEffect(() => {
    axios
      .get("http://localhost:8080/api/loads")
      .then((res) => {
        setLoads(res.data)
      })
  }, [])

  return (
    <div>
      <h1 className="title is-1">This is the Loads Page</h1>
      <article className="message is-dark" style={{ marginTop: 40 }}>
        <div className="message-header">
          <p>{name}</p>
        </div>
        <div className="message-body">
          TODO this should show the etl_file from
        </div>
        <div className="message-body"> transaction_id | sale_count | inventory_count | customer_count </div>
        {
          loads.map((load) =>
            <div className="message-body"> {load.transaction_id} | {load.sale_count} | {load.inventory_count} | {load.customer_count} </div>
          )
        }
      </article>
    </div>
  );
};

export default withAuth(Loads);
