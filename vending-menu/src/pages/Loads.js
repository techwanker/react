import React from "react";
import { useParams } from "react-router-dom";
import withAuth from "../components/withAuth";

const Loads = () => {
  const { name } = useParams();
  return (
    <div>
      <h1 className="title is-1">This is the Products Page</h1>
      <article className="message is-dark" style={{ marginTop: 40 }}>
        <div className="message-header">
          <p>{name}</p>
        </div>
        <div className="message-body">
          TODO this should show the etl_file from 
        </div>
      </article>
    </div>
  );
};

export default withAuth(Loads);
