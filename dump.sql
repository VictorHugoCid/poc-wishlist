--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: films; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.films (
    id integer NOT NULL,
    title text NOT NULL,
    platform text NOT NULL,
    type text NOT NULL,
    "userId" integer NOT NULL,
    status boolean DEFAULT false,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: films id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.films VALUES (1, 'ace ventura', 'amazon prime', 'comedia', 2, false, '2022-11-09 20:43:53.435539');
INSERT INTO public.films VALUES (2, 'ace ventura', 'amazon prime', 'comedia', 1, true, '2022-11-09 20:43:57.816312');
INSERT INTO public.films VALUES (5, 'filmao sessão da tarde', 'netflix', 'ação', 1, false, '2022-11-10 07:25:01.628446');
INSERT INTO public.films VALUES (7, 'filmao 2', 'netflix', 'ação', 1, false, '2022-11-10 09:29:00.652143');
INSERT INTO public.films VALUES (12, 'filmao 5', 'netflix', 'terror', 2, false, '2022-11-10 09:35:42.81616');
INSERT INTO public.films VALUES (13, 'filmao 1', 'netflix', 'ação', 2, false, '2022-11-10 09:35:58.566787');
INSERT INTO public.films VALUES (14, 'filmao 2', 'netflix', 'ação', 2, false, '2022-11-10 09:36:11.929096');
INSERT INTO public.films VALUES (15, 'filmao 3', 'amazon prime', 'comédia', 2, false, '2022-11-10 09:36:29.177576');
INSERT INTO public.films VALUES (4, 'filminho top', 'netflix', 'anime', 1, true, '2022-11-09 20:44:40.1007');
INSERT INTO public.films VALUES (6, 'filmao 1', 'netflix', 'ação', 1, true, '2022-11-10 09:28:54.420334');
INSERT INTO public.films VALUES (8, 'filmao 3', 'amazon prime', 'comédia', 1, true, '2022-11-10 09:29:13.048291');
INSERT INTO public.films VALUES (10, 'filmao 4', 'amazon prime', 'série', 1, true, '2022-11-10 09:29:27.157839');
INSERT INTO public.films VALUES (11, 'filmao 4', 'amazon prime', 'série', 2, true, '2022-11-10 09:29:37.940383');
INSERT INTO public.films VALUES (16, 'filmao 6', 'amazon prime', 'anime', 2, true, '2022-11-10 09:36:42.805548');
INSERT INTO public.films VALUES (17, 'enola holmes', 'netflix', 'investigação', 2, true, '2022-11-14 07:58:29.386198');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'cid', 'cid@fla.com', '123', '2022-11-10 09:43:50.953516');
INSERT INTO public.users VALUES (2, 'rod', 'rod@fla.com', '123', '2022-11-10 09:44:04.526587');


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.films_id_seq', 17, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

