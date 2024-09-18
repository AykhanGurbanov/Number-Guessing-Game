--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    name_id integer,
    number_of_guess integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    name_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_name_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_name_id_seq OWNED BY public.usernames.name_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames name_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN name_id SET DEFAULT nextval('public.usernames_name_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (108, 171, 490);
INSERT INTO public.games VALUES (109, 171, 626);
INSERT INTO public.games VALUES (110, 172, 184);
INSERT INTO public.games VALUES (111, 172, 352);
INSERT INTO public.games VALUES (112, 171, 597);
INSERT INTO public.games VALUES (113, 171, 486);
INSERT INTO public.games VALUES (114, 171, 892);
INSERT INTO public.games VALUES (115, 173, 514);
INSERT INTO public.games VALUES (116, 173, 917);
INSERT INTO public.games VALUES (117, 174, 588);
INSERT INTO public.games VALUES (118, 174, 864);
INSERT INTO public.games VALUES (119, 173, 887);
INSERT INTO public.games VALUES (120, 173, 293);
INSERT INTO public.games VALUES (121, 173, 118);
INSERT INTO public.games VALUES (122, 175, 469);
INSERT INTO public.games VALUES (123, 175, 11);
INSERT INTO public.games VALUES (124, 176, 985);
INSERT INTO public.games VALUES (125, 176, 829);
INSERT INTO public.games VALUES (126, 175, 512);
INSERT INTO public.games VALUES (127, 175, 505);
INSERT INTO public.games VALUES (128, 175, 1000);
INSERT INTO public.games VALUES (129, 177, 426);
INSERT INTO public.games VALUES (130, 177, 417);
INSERT INTO public.games VALUES (131, 178, 124);
INSERT INTO public.games VALUES (132, 178, 921);
INSERT INTO public.games VALUES (133, 177, 956);
INSERT INTO public.games VALUES (134, 177, 675);
INSERT INTO public.games VALUES (135, 177, 935);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (148, 'user_1726655199398');
INSERT INTO public.usernames VALUES (149, 'user_1726655199397');
INSERT INTO public.usernames VALUES (150, 'user_1726655259974');
INSERT INTO public.usernames VALUES (151, 'user_1726655259973');
INSERT INTO public.usernames VALUES (152, 'user_1726655287580');
INSERT INTO public.usernames VALUES (153, 'user_1726655287579');
INSERT INTO public.usernames VALUES (154, 'Aykhan');
INSERT INTO public.usernames VALUES (155, 'user_1726655364774');
INSERT INTO public.usernames VALUES (156, 'user_1726655364773');
INSERT INTO public.usernames VALUES (157, 'user_1726655387012');
INSERT INTO public.usernames VALUES (158, 'user_1726655387011');
INSERT INTO public.usernames VALUES (159, 'user_1726655469004');
INSERT INTO public.usernames VALUES (160, 'user_1726655469003');
INSERT INTO public.usernames VALUES (161, 'user_1726655531178');
INSERT INTO public.usernames VALUES (162, 'user_1726655531177');
INSERT INTO public.usernames VALUES (163, 'user_1726655568473');
INSERT INTO public.usernames VALUES (164, 'user_1726655568472');
INSERT INTO public.usernames VALUES (165, 'user_1726655579167');
INSERT INTO public.usernames VALUES (166, 'user_1726655579166');
INSERT INTO public.usernames VALUES (167, 'user_1726655655466');
INSERT INTO public.usernames VALUES (168, 'user_1726655655465');
INSERT INTO public.usernames VALUES (169, 'user_1726655689489');
INSERT INTO public.usernames VALUES (170, 'user_1726655689488');
INSERT INTO public.usernames VALUES (171, 'user_1726655892307');
INSERT INTO public.usernames VALUES (172, 'user_1726655892306');
INSERT INTO public.usernames VALUES (173, 'user_1726655943565');
INSERT INTO public.usernames VALUES (174, 'user_1726655943564');
INSERT INTO public.usernames VALUES (175, 'user_1726655974762');
INSERT INTO public.usernames VALUES (176, 'user_1726655974761');
INSERT INTO public.usernames VALUES (177, 'user_1726656098297');
INSERT INTO public.usernames VALUES (178, 'user_1726656098296');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 135, true);


--
-- Name: usernames_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_name_id_seq', 178, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_name_key UNIQUE (name);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (name_id);


--
-- Name: games games_name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_id_fkey FOREIGN KEY (name_id) REFERENCES public.usernames(name_id);


--
-- PostgreSQL database dump complete
--
