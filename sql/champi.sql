--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

--
-- Name: champi; Type: SCHEMA; Schema: -; Owner: champi
--

CREATE SCHEMA champi;


ALTER SCHEMA champi OWNER TO champi;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: champignon; Type: TABLE; Schema: champi; Owner: champi
--

CREATE TABLE champi.champignon (
    id integer NOT NULL,
    nom character varying(150) NOT NULL,
    comestible character varying(30),
    taux numeric(3,2)
);


ALTER TABLE champi.champignon OWNER TO champi;

--
-- Name: champignon_id_seq; Type: SEQUENCE; Schema: champi; Owner: champi
--

CREATE SEQUENCE champi.champignon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE champi.champignon_id_seq OWNER TO champi;

--
-- Name: champignon_id_seq; Type: SEQUENCE OWNED BY; Schema: champi; Owner: champi
--

ALTER SEQUENCE champi.champignon_id_seq OWNED BY champi.champignon.id;


--
-- Name: champignon id; Type: DEFAULT; Schema: champi; Owner: champi
--

ALTER TABLE ONLY champi.champignon ALTER COLUMN id SET DEFAULT nextval('champi.champignon_id_seq'::regclass);


--
-- Data for Name: champignon; Type: TABLE DATA; Schema: champi; Owner: champi
--

COPY champi.champignon (id, nom, comestible, taux) FROM stdin;
5	RUSSULE CHARBONNIERE	Excellent comestible	\N
6	ROSE DES PRES	Excellent comestible	\N
7	MORILLE CONIQUE	Excellent comestible	\N
8	MORILLE BLONDE	Excellent comestible	\N
9	GIROLLE DE FRIES	Excellent comestible	\N
10	GIROLLE AMÃ‰THYSTE	Excellent comestible	\N
11	GIROLLE	Excellent comestible	\N
12	TRUFFE NOIRE	Excellent comestible	\N
13	TRICHOLOME DE LA SAINT-GEORGES	Excellent comestible	\N
14	TROMPETTE DES MORTS	Excellent comestible	\N
15	CHANTERELLE JAUNE	Excellent comestible	\N
16	COULEMELLE	Excellent comestible	\N
17	COPRIN CHEVELU	Excellent comestible	\N
18	CEPE BRONZE	Excellent comestible	\N
19	CEPE DE BORDEAUX	Excellent comestible	\N
20	CEPE DES PINS	Excellent comestible	\N
21	CEPE Dâ€™ETE	Excellent comestible	\N
22	CHANTERELLE CENDREE	Excellent comestible	\N
23	CHANTERELLE EN TUBE	Excellent comestible	\N
24	PEZIZE Dâ€™AUTRICHE	Comestible	\N
25	RUSSULE CRAQUELEE	Comestible	\N
26	Russule verdoyante	Comestible	\N
27	RUSSULE DOREE	Comestible	\N
28	RUSSULE COMESTIBLE	Comestible	\N
29	RUSSULE CHARBONNIERE	Comestible	\N
30	ROSE DES PRES	Comestible	\N
31	PEZIZE ECARLATE	Comestible	\N
32	PLEUROTE DU PANICAUT	Comestible	\N
33	PIED DE MOUTON	Comestible	\N
34	PÃ‰ZIZE VEINÃ‰E	Comestible	\N
35	PÃ‰ZIZE ORANGÃ‰E	Comestible	\N
36	POLYPORE EN OMBELLE	Comestible	\N
37	OREILLE DE LIÃˆVRE	Comestible	\N
38	OREILLE DE JUDAS	Comestible	\N
39	MORILLE CONIQUE	Comestible	\N
40	MORILLE BLONDE	Comestible	\N
41	MEUNIER	Comestible	\N
42	NONNETTE VOILÃ‰E	Comestible	\N
43	LANGUE DE BOEUF	Comestible	\N
44	LACTAIRE DÃ‰LICIEUX	Comestible	\N
45	HYDNE HÃ‰RISSON	Comestible	\N
46	GIROLLE DE FRIES	Comestible	\N
47	GOMPHIDE GLUTINEUX	Comestible	\N
48	GIROLLE AMÃ‰THYSTE	Comestible	\N
49	GIROLLE	Comestible	\N
50	FAUSSE GIROLLE	Comestible	\N
51	TRUFFE NOIRE	Comestible	\N
52	TRICHOLOME DE LA SAINT-GEORGES	Comestible	\N
53	VESSE-DE-LOUP PERLÃ‰E	Comestible	\N
54	LACCAIRE AMETHYSTE	Comestible	\N
55	TROMPETTE DES MORTS	Comestible	\N
56	CHANTERELLE JAUNE	Comestible	\N
57	COULEMELLE	Comestible	\N
58	CORTINAIRE VIOLET	Comestible	\N
59	CORTINAIRE REMARQUABLE	Comestible	\N
60	COPRIN CHEVELU	Comestible	\N
61	COLLYBIE DES CHÃŠNES	Comestible	\N
62	COLLYBIE A PIED VELOUTE	Comestible	\N
63	CLITOCYBE ODORANT	Comestible	\N
64	CLITOCYBE GEOTROPE	Comestible	\N
65	CHANTERELLE VIOLETTE	Comestible	\N
66	CEPE BRONZE	Comestible	\N
67	CEPE DE BORDEAUX	Comestible	\N
68	CEPE DES PINS	Comestible	\N
69	CEPE Dâ€™ETE	Comestible	\N
70	CHANTERELLE CENDREE	Comestible	\N
71	CHANTERELLE EN TUBE	Comestible	\N
72	AMANITE ROUGISSANTE	Comestible	\N
73	AMANITE FAUVE	Comestible	\N
74	AMANITE Ã‰PAISSE	Comestible	\N
75	AGROCYBE PRÃ‰COCE	Comestible	\N
76	AGARIC SYLVICOLE	Comestible	\N
77	BOLET TOMENTEUX	Comestible	\N
78	BOLET GRANULÃ‰	Comestible	\N
79	BOLET CRAQUELÃ‰	Comestible	\N
80	BOLET Ã€ PIED ROUGE	Comestible	\N
81	BOLET Ã€ CHAIR JAUNE	Comestible	\N
82	BOLET ORANGÃ‰ DES CHÃŠNES	Comestible	\N
83	POLYPORE DU BOULEAU	Comestible	\N
84	PLUTEE COULEUR DE LION	Comestible	\N
85	POLYPORE BAI	Comestible	\N
86	BOLET ORANGÃ‰	Comestible	\N
87	HÃ‰BÃ‰LOME Ã‰CHAUDÃ‰	Toxique	\N
88	GYMNOPILE PÃ‰NÃ‰TRANT	Toxique	\N
89	CLAVAIRE ELEGANTE	Toxique	\N
90	AMANITE TUE-MOUCHES	Toxique	\N
91	AMANITE PANTHÃˆRE	Toxique	\N
92	AMANITE JONQUILLE	Toxique	\N
93	AGARIC JAUNISSANT	Toxique	\N
94	BOLET SATAN	Toxique	\N
95	BOLET BLAFARD	Toxique	\N
\.


--
-- Name: champignon_id_seq; Type: SEQUENCE SET; Schema: champi; Owner: champi
--

SELECT pg_catalog.setval('champi.champignon_id_seq', 95, true);


--
-- Name: champignon pk_champignon; Type: CONSTRAINT; Schema: champi; Owner: champi
--

ALTER TABLE ONLY champi.champignon
    ADD CONSTRAINT pk_champignon PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

