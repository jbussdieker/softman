--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO atdbscplkrbont;

--
-- Name: softwares; Type: TABLE; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE TABLE softwares (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.softwares OWNER TO atdbscplkrbont;

--
-- Name: softwares_id_seq; Type: SEQUENCE; Schema: public; Owner: atdbscplkrbont
--

CREATE SEQUENCE softwares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.softwares_id_seq OWNER TO atdbscplkrbont;

--
-- Name: softwares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: atdbscplkrbont
--

ALTER SEQUENCE softwares_id_seq OWNED BY softwares.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO atdbscplkrbont;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: atdbscplkrbont
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO atdbscplkrbont;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: atdbscplkrbont
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE TABLE versions (
    id integer NOT NULL,
    software_id integer,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.versions OWNER TO atdbscplkrbont;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: atdbscplkrbont
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO atdbscplkrbont;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: atdbscplkrbont
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: atdbscplkrbont
--

ALTER TABLE ONLY softwares ALTER COLUMN id SET DEFAULT nextval('softwares_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: atdbscplkrbont
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: atdbscplkrbont
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: atdbscplkrbont
--

COPY schema_migrations (version) FROM stdin;
20121221041427
20121221042034
20121221050741
\.


--
-- Data for Name: softwares; Type: TABLE DATA; Schema: public; Owner: atdbscplkrbont
--

COPY softwares (id, name, created_at, updated_at) FROM stdin;
1	nginx	2012-12-21 04:40:54.60484	2012-12-21 04:40:54.60484
2	varnish	2012-12-21 04:40:59.701854	2012-12-21 04:40:59.701854
3	collectd	2012-12-21 04:41:04.549464	2012-12-21 04:41:04.549464
4	postgresql	2012-12-21 04:41:10.261608	2012-12-21 04:41:10.261608
\.


--
-- Name: softwares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: atdbscplkrbont
--

SELECT pg_catalog.setval('softwares_id_seq', 4, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: atdbscplkrbont
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	jbussdieker@gmail.com	$2a$10$zV6Cd8OU3CXW7cOQ1jfI9u6QdUms10jgCtEQ0b8ZJvbVsBAGTi5vq	\N	\N	\N	9	2013-08-22 14:41:24.278674	2013-02-26 11:01:16.257989	72.196.108.139	216.55.28.162	2012-12-21 04:19:19.729009	2013-08-22 14:41:24.318145
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: atdbscplkrbont
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: atdbscplkrbont
--

COPY versions (id, software_id, name, created_at, updated_at) FROM stdin;
1	1	1.2.6	2012-12-21 07:19:53.919022	2012-12-21 07:19:53.919022
2	3	5.2.0	2012-12-21 07:20:27.032378	2012-12-21 07:20:27.032378
3	4	9.2.2	2012-12-21 07:20:41.80092	2012-12-21 07:20:41.80092
9	2	3.0.3	2012-12-22 01:35:20.68558	2012-12-22 01:35:20.68558
11	1	0.7.65 (V2)	2012-12-22 01:35:51.015588	2012-12-22 01:35:51.015588
12	1	1.1.19 (Nosaka)	2012-12-22 01:35:59.08438	2012-12-22 01:35:59.08438
13	2	3.0.2 (Nosaka)	2012-12-22 01:36:19.386846	2012-12-22 01:36:19.386846
14	2	2.1 (V2)	2012-12-22 01:36:26.166206	2012-12-22 01:36:26.166206
16	3	5.1.0 (Nosaka + V2)	2012-12-22 01:38:24.154828	2012-12-22 01:38:24.154828
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: atdbscplkrbont
--

SELECT pg_catalog.setval('versions_id_seq', 16, true);


--
-- Name: softwares_pkey; Type: CONSTRAINT; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

ALTER TABLE ONLY softwares
    ADD CONSTRAINT softwares_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_versions_on_software_id; Type: INDEX; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE INDEX index_versions_on_software_id ON versions USING btree (software_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: atdbscplkrbont; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: atdbscplkrbont
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM atdbscplkrbont;
GRANT ALL ON SCHEMA public TO atdbscplkrbont;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

