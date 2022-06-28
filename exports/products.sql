--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Ubuntu 14.3-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.3 (Ubuntu 14.3-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: products; Type: TABLE; Schema: vending; Owner: javautil
--

CREATE TABLE vending.products (
    id integer NOT NULL,
    manufacturer_id bigint,
    product_description character varying(255),
    mfr_product_id character varying(255),
    case_gtin character varying(255),
    box_gtin character varying(255),
    unit_gtin character varying(255),
    units_per_box integer,
    units_per_case integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE vending.products OWNER TO javautil;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: vending; Owner: javautil
--

CREATE SEQUENCE vending.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vending.products_id_seq OWNER TO javautil;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: vending; Owner: javautil
--

ALTER SEQUENCE vending.products_id_seq OWNED BY vending.products.id;


--
-- Name: products id; Type: DEFAULT; Schema: vending; Owner: javautil
--

ALTER TABLE ONLY vending.products ALTER COLUMN id SET DEFAULT nextval('vending.products_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: vending; Owner: javautil
--

COPY vending.products (id, manufacturer_id, product_description, mfr_product_id, case_gtin, box_gtin, unit_gtin, units_per_box, units_per_case, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: vending; Owner: javautil
--

SELECT pg_catalog.setval('vending.products_id_seq', 1, false);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: vending; Owner: javautil
--

ALTER TABLE ONLY vending.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

