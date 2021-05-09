--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Debian 12.6-1.pgdg100+1)
-- Dumped by pg_dump version 12.6 (Debian 12.6-1.pgdg100+1)

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
-- Name: actividad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actividad (
);


ALTER TABLE public.actividad OWNER TO postgres;

--
-- Name: clase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clase (
);


ALTER TABLE public.clase OWNER TO postgres;

--
-- Name: materia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materia (
    id_materia character varying(1000) NOT NULL,
    cod_materia character varying(500),
    nombre_mat character varying(500),
    persona_id_materia character varying(1000),
    descripcion character varying(2000),
    unidad_edu character varying(500),
    terminos character varying(3000),
    fecha date,
    horario_uno character varying(200),
    horario_dos character varying(200),
    horario_tres character varying(200),
    nivel character varying(200),
    estado boolean
);


ALTER TABLE public.materia OWNER TO postgres;

--
-- Name: materia_id_materia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materia_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materia_id_materia_seq OWNER TO postgres;

--
-- Name: materia_id_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materia_id_materia_seq OWNED BY public.materia.id_materia;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id_persona character varying(2000) NOT NULL,
    extencion_ci character varying(5),
    nombre character varying(500),
    apellido_pat character varying(500),
    apellido_mat character varying(500),
    fecha_nac date,
    email character varying(500),
    num_cel integer,
    num_cel_opcional integer,
    img_perfil character varying(2000),
    tipo character varying,
    alias character varying(200),
    contrasenia character varying(2000),
    estado character varying
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- Name: persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_persona_seq OWNER TO postgres;

--
-- Name: persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_persona_seq OWNED BY public.persona.id_persona;


--
-- Name: pertenece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pertenece (
    materia_id_materia character varying(1000),
    email_alumno character varying(1000),
    estado_invitacion boolean,
    estado_email boolean
);


ALTER TABLE public.pertenece OWNER TO postgres;

--
-- Name: realiza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realiza (
);


ALTER TABLE public.realiza OWNER TO postgres;

--
-- Name: materia id_materia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materia ALTER COLUMN id_materia SET DEFAULT nextval('public.materia_id_materia_seq'::regclass);


--
-- Name: persona id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id_persona SET DEFAULT nextval('public.persona_id_persona_seq'::regclass);


--
-- Data for Name: actividad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actividad  FROM stdin;
\.


--
-- Data for Name: clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clase  FROM stdin;
\.


--
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materia (id_materia, cod_materia, nombre_mat, persona_id_materia, descripcion, unidad_edu, terminos, fecha, horario_uno, horario_dos, horario_tres, nivel, estado) FROM stdin;
60945f1edf14b45d526e4869	vtt	Vida tierra y territorio	60940ae319e9dd232aa3542b	input de prueba	Delia Gambarte	\N	2021-05-06	Lunes 10:00 - 12:00	Miercoles 10:00 - 12:00	Viernes 10:00 - 12:00	Kinder	t
6094670d7fe8f46c1ef0e6d4	vtt	Vida tierra y territorio	60940ae319e9dd232aa3542b	dsadsa sa sadas das	Delia gambarte	true	2021-05-06	Lunes 10:00 12:00	  	  	Pre-kinder	t
60946fd6b41d2d76ad1c84c2	cyt	Ciencia y tecnologia	60940ae319e9dd232aa3542b	nueva clase	Juana de Arco	true	2021-05-06	Miercoles 08:00 10:00	  	  	Pre-kinder	t
609474c3b41d2d76ad1c84c4	edf	Educación física	60940ae319e9dd232aa3542b	dasdas dsad asd asdsad asd	Bichito de luz	true	2021-05-06	Lunes 18:00 20:00	  	  	Kinder	t
60956558a9f97e59d1bdfe37	cyt	Ciencia y tecnologia	609564809cf32058b86574a0	sadsad adsas dsad asdsa da	Bichito de luz	true	2021-05-07	Martes 10:20 15:00	  	  	Pre-kinder	t
60956b1de3f1ee5ff47c2b9d	cys	Comunidad y sociedad	6091c46583aad82b3fbc88a1	sadas sad sadsa dsa 	Delia gambarte	true	2021-05-07	Martes 10:00 12:00	  	  	Pre-kinder	t
60981101c86199564deda9e1	vtt	Vida tierra y territorio	6097f1281f0d5e344dd19bc1	nueva clase	Delia gambarte	true	2021-05-09	Lunes 10:00 12:00	  	  	Pre-kinder	t
609858d910a53f044fddc627	cys	Comunidad y sociedad	6098587110a53f044fddc624	niños felices	Bichito de luz	true	2021-05-09	Lunes 10:00 12:00	  	  	Pre-kinder	t
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id_persona, extencion_ci, nombre, apellido_pat, apellido_mat, fecha_nac, email, num_cel, num_cel_opcional, img_perfil, tipo, alias, contrasenia, estado) FROM stdin;
6097f1281f0d5e344dd19bc1	\N	Edson Vladimir	Sosa	Sacari	1988-07-05	edson.vladimir.sosa@gmail.com	67128003	\N	\N	Profesor	\N	$2a$10$Sby8CsU.9rgwzmGxTJ7cT.mjtueIrxG/WYjNZLcYvqYHOe3O6YAWy	true
6098587110a53f044fddc624	\N	Nora Sara	Gallardo	Quispe	1995-01-18	nora@gmail.com	73514952	\N	\N	Profesor	\N	$2a$10$hsviUtEvEewoVc8zsvIwGupmZ3iYVyKXXk4KHAvdDZj5TcTGz/7ue	true
\.


--
-- Data for Name: pertenece; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pertenece (materia_id_materia, email_alumno, estado_invitacion, estado_email) FROM stdin;
sadsadsadsa45d64sa65d4s6a5	edson.vladimir.sosa@gmail.com	f	t
sadsadsadsa45d64sa65d4s6a5	edson.vladimir.sosa@gmail.com	f	t
sadsadsadsa45d64sa65d4s6a5	edson.vladimir.sosa@gmail.com	f	t
sadsadsadsa45d64sa65d4s6a5	edson.vladimir.sosa@gmail.com	f	t
sadsadsadsa45d64sa65d4s6a5	edson.vladimir.sosa@gmail.com	f	t
sadsadsadsa45d64sa65d4s6a5dsds	edson.vladimir.sosa@gmail.com	f	t
60981101c86199564deda9e1	edson.vladimir.sosa@gmail.com	f	t
\.


--
-- Data for Name: realiza; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.realiza  FROM stdin;
\.


--
-- Name: materia_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materia_id_materia_seq', 1, false);


--
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_persona_seq', 8, true);


--
-- Name: materia materia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id_materia);


--
-- Name: persona persona_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_email_key UNIQUE (email);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- PostgreSQL database dump complete
--

