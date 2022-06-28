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
-- Name: etl_file; Type: TABLE; Schema: vending; Owner: javautil
--

CREATE TABLE vending.etl_file (
    etl_file_id bigint NOT NULL,
    rpt_org_id integer NOT NULL,
    distributor_id integer NOT NULL,
    filename character varying(255) NOT NULL,
    sale_count integer,
    customer_count integer,
    inventory_count integer,
    transaction_id bigint NOT NULL,
    json jsonb
);


ALTER TABLE vending.etl_file OWNER TO javautil;

--
-- Data for Name: etl_file; Type: TABLE DATA; Schema: vending; Owner: javautil
--

COPY vending.etl_file (etl_file_id, rpt_org_id, distributor_id, filename, sale_count, customer_count, inventory_count, transaction_id, json) FROM stdin;
1	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201501.cds	3398	2613	148	1	\N
2	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201502.cds	3398	2613	148	3	\N
3	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201503.cds	4053	2613	150	5	\N
4	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201504.cds	4090	2613	146	7	\N
5	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201505.cds	4188	2613	152	9	\N
6	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201506.cds	4478	2613	144	11	\N
7	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201507.cds	4420	2613	146	13	\N
8	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201508.cds	4572	2613	148	15	\N
9	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201509.cds	4084	2613	142	17	\N
10	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201510.cds	4222	2613	142	19	\N
11	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201511.cds	3827	2613	138	21	\N
12	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201512.cds	4040	2613	140	23	\N
13	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201513.cds	4171	2613	152	25	\N
14	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201514.cds	4321	2613	146	27	\N
15	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201515.cds	4796	2613	144	29	\N
16	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201516.cds	4853	2613	144	31	\N
17	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201517.cds	4565	2613	138	33	\N
18	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201518.cds	4843	2613	144	35	\N
19	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201519.cds	5110	2613	144	37	\N
20	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201520.cds	6876	2613	144	39	\N
21	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201521.cds	5094	2613	142	41	\N
22	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201522.cds	5261	2613	140	43	\N
23	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201523.cds	4662	2613	138	45	\N
24	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201524.cds	5271	2613	134	47	\N
25	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201525.cds	4827	2613	138	49	\N
26	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201526.cds	5075	2613	138	51	\N
27	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201527.cds	5284	2613	128	53	\N
28	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201528.cds	4654	2613	132	55	\N
29	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201529.cds	4794	2613	140	57	\N
30	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201530.cds	4607	2613	138	59	\N
31	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201531.cds	5095	2613	138	61	\N
32	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201532.cds	4664	2613	132	63	\N
33	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201533.cds	4470	2613	138	65	\N
34	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201534.cds	4950	2613	138	67	\N
35	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201535.cds	5423	2613	138	69	\N
36	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201536.cds	5006	2613	134	71	\N
37	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201537.cds	5828	2613	128	73	\N
38	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201538.cds	4546	2613	142	75	\N
39	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201539.cds	4840	2613	132	77	\N
40	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201540.cds	4739	2613	128	79	\N
41	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201541.cds	5079	2613	130	81	\N
42	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201542.cds	4786	2613	128	83	\N
43	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201543.cds	4666	2613	140	85	\N
44	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201544.cds	4733	2613	136	87	\N
45	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201545.cds	4486	2613	128	89	\N
46	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201546.cds	3570	2613	130	91	\N
47	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201547.cds	4756	2613	136	93	\N
48	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201548.cds	2977	2613	128	95	\N
49	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201549.cds	5032	2613	130	97	\N
50	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201550.cds	4703	2613	126	99	\N
51	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201551.cds	4514	2613	130	101	\N
52	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201552.cds	3940	2613	132	103	\N
53	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201553.cds	2406	2613	124	105	\N
54	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201601.cds	3647	2613	128	107	\N
55	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201602.cds	3980	2613	126	109	\N
56	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201603.cds	4335	2613	132	111	\N
57	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201604.cds	4856	2613	128	113	\N
58	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201605.cds	4774	2613	126	115	\N
59	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201606.cds	5024	2613	126	117	\N
60	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201607.cds	4876	2613	128	119	\N
61	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201608.cds	4587	2613	126	121	\N
62	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201609.cds	7098	2613	126	123	\N
63	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201610.cds	4803	2613	126	125	\N
64	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201611.cds	4957	2613	124	127	\N
65	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201612.cds	4862	2613	126	129	\N
66	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201613.cds	4929	2613	120	131	\N
67	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201614.cds	5073	2613	126	133	\N
68	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201615.cds	4483	2613	130	135	\N
69	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201616.cds	5193	2613	122	137	\N
70	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201617.cds	5456	2613	130	139	\N
71	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201618.cds	5660	2613	126	141	\N
72	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201619.cds	5346	2613	128	143	\N
73	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201620.cds	6635	2613	122	145	\N
74	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201621.cds	4380	2613	118	147	\N
75	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201622.cds	7961	2613	122	149	\N
76	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201623.cds	5665	2613	126	151	\N
77	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201624.cds	6041	2613	118	153	\N
78	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201625.cds	5633	2613	120	155	\N
79	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201626.cds	5878	2613	120	157	\N
80	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201627.cds	5216	2613	124	159	\N
81	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201628.cds	5658	2613	120	161	\N
82	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201629.cds	7404	2613	124	163	\N
83	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201630.cds	12577	2613	122	165	\N
84	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201631.cds	10672	2613	126	167	\N
85	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201632.cds	12349	2613	124	169	\N
86	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201633.cds	10155	2613	122	171	\N
87	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201634.cds	9501	2613	128	173	\N
88	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201635.cds	7267	2613	126	175	\N
89	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201636.cds	12125	2613	124	177	\N
90	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201637.cds	9688	2613	126	179	\N
91	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201638.cds	9424	2613	126	181	\N
92	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201639.cds	9454	2613	126	183	\N
93	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201640.cds	10399	2613	124	185	\N
94	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201641.cds	9947	2613	124	187	\N
95	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201642.cds	9318	2613	126	189	\N
96	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201643.cds	9017	2613	124	191	\N
97	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201644.cds	8888	2613	124	193	\N
98	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201645.cds	8256	2613	122	195	\N
99	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201646.cds	9437	2613	124	197	\N
100	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201647.cds	6626	2613	120	199	\N
101	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201648.cds	9186	2613	120	201	\N
102	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201649.cds	8304	2613	126	203	\N
103	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201650.cds	8293	2613	118	205	\N
104	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201651.cds	4955	2613	124	207	\N
105	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201652.cds	5857	2613	122	209	\N
106	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201653.cds	635	2613	118	211	\N
107	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201701.cds	8331	2613	122	213	\N
108	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201702.cds	7624	2613	124	215	\N
109	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201703.cds	7988	2613	124	217	\N
110	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201704.cds	7915	2613	122	219	\N
111	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201705.cds	8498	2613	120	221	\N
112	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201706.cds	8985	2613	120	223	\N
113	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201707.cds	9016	2613	116	225	\N
114	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201708.cds	8190	2613	122	227	\N
115	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201709.cds	4447	2613	124	229	\N
116	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201710.cds	8398	2613	124	231	\N
117	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201711.cds	8360	2613	122	233	\N
118	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201712.cds	8471	2613	126	235	\N
119	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201713.cds	7800	2613	120	237	\N
120	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201714.cds	8382	2613	126	239	\N
121	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201715.cds	9025	2613	120	241	\N
122	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201716.cds	9280	2613	124	243	\N
123	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201717.cds	9557	2613	116	245	\N
124	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201718.cds	9900	2613	118	247	\N
125	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201719.cds	10190	2613	124	249	\N
126	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201720.cds	10478	2613	122	251	\N
127	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201721.cds	10500	2613	120	253	\N
128	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201722.cds	11993	2613	122	255	\N
129	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201723.cds	10949	2613	124	257	\N
130	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201724.cds	10284	2613	120	259	\N
131	18	18	/home/jjs/git/diamond-9.5/javautil/vending-sales-reporting/src/test/resources/dataloads/201752.cds	885	2613	108	261	\N
\.


--
-- Name: etl_file etl_file_pkey; Type: CONSTRAINT; Schema: vending; Owner: javautil
--

ALTER TABLE ONLY vending.etl_file
    ADD CONSTRAINT etl_file_pkey PRIMARY KEY (etl_file_id);


--
-- Name: etl_file etl_file_rpt_org_id_fkey; Type: FK CONSTRAINT; Schema: vending; Owner: javautil
--

ALTER TABLE ONLY vending.etl_file
    ADD CONSTRAINT etl_file_rpt_org_id_fkey FOREIGN KEY (rpt_org_id) REFERENCES vending.distributor(distributor_id);


--
-- Name: etl_file etl_file_transaction_id_fkey; Type: FK CONSTRAINT; Schema: vending; Owner: javautil
--

ALTER TABLE ONLY vending.etl_file
    ADD CONSTRAINT etl_file_transaction_id_fkey FOREIGN KEY (transaction_id) REFERENCES vending.transaction(transaction_id);


--
-- PostgreSQL database dump complete
--

