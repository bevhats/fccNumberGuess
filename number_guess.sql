--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    start_date date,
    number_of_guesses integer,
    secret_number integer,
    user_id integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, '2022-12-10', 7, 672, 1);
INSERT INTO public.games VALUES (2, '2022-12-10', 5, 281, 1);
INSERT INTO public.games VALUES (3, '2022-12-10', 4, 157, 1);
INSERT INTO public.games VALUES (4, '2022-12-10', 800, 799, 5);
INSERT INTO public.games VALUES (5, '2022-12-10', 619, 618, 5);
INSERT INTO public.games VALUES (6, '2022-12-10', 998, 997, 6);
INSERT INTO public.games VALUES (7, '2022-12-10', 333, 332, 6);
INSERT INTO public.games VALUES (8, '2022-12-10', 220, 217, 5);
INSERT INTO public.games VALUES (9, '2022-12-10', 741, 739, 5);
INSERT INTO public.games VALUES (10, '2022-12-10', 183, 182, 5);
INSERT INTO public.games VALUES (11, '2022-12-10', 939, 938, 7);
INSERT INTO public.games VALUES (12, '2022-12-10', 424, 423, 7);
INSERT INTO public.games VALUES (13, '2022-12-10', 38, 37, 8);
INSERT INTO public.games VALUES (14, '2022-12-10', 187, 186, 8);
INSERT INTO public.games VALUES (15, '2022-12-10', 999, 996, 7);
INSERT INTO public.games VALUES (16, '2022-12-10', 176, 174, 7);
INSERT INTO public.games VALUES (17, '2022-12-10', 255, 254, 7);
INSERT INTO public.games VALUES (18, '2022-12-10', 228, 227, 9);
INSERT INTO public.games VALUES (19, '2022-12-10', 741, 740, 9);
INSERT INTO public.games VALUES (20, '2022-12-10', 906, 905, 10);
INSERT INTO public.games VALUES (21, '2022-12-10', 789, 788, 10);
INSERT INTO public.games VALUES (22, '2022-12-10', 464, 461, 9);
INSERT INTO public.games VALUES (23, '2022-12-10', 275, 273, 9);
INSERT INTO public.games VALUES (24, '2022-12-10', 563, 562, 9);
INSERT INTO public.games VALUES (25, '2022-12-10', 668, 667, 11);
INSERT INTO public.games VALUES (26, '2022-12-10', 431, 430, 11);
INSERT INTO public.games VALUES (27, '2022-12-10', 123, 122, 12);
INSERT INTO public.games VALUES (28, '2022-12-10', 973, 972, 12);
INSERT INTO public.games VALUES (29, '2022-12-10', 454, 451, 11);
INSERT INTO public.games VALUES (30, '2022-12-10', 146, 144, 11);
INSERT INTO public.games VALUES (31, '2022-12-10', 348, 347, 11);
INSERT INTO public.games VALUES (32, '2022-12-10', 161, 160, 13);
INSERT INTO public.games VALUES (33, '2022-12-10', 194, 193, 13);
INSERT INTO public.games VALUES (34, '2022-12-10', 950, 949, 14);
INSERT INTO public.games VALUES (35, '2022-12-10', 413, 412, 14);
INSERT INTO public.games VALUES (36, '2022-12-10', 536, 533, 13);
INSERT INTO public.games VALUES (37, '2022-12-10', 529, 527, 13);
INSERT INTO public.games VALUES (38, '2022-12-10', 600, 599, 13);
INSERT INTO public.games VALUES (39, '2022-12-10', 636, 635, 15);
INSERT INTO public.games VALUES (40, '2022-12-10', 795, 794, 15);
INSERT INTO public.games VALUES (41, '2022-12-10', 986, 985, 16);
INSERT INTO public.games VALUES (42, '2022-12-10', 71, 70, 16);
INSERT INTO public.games VALUES (43, '2022-12-10', 80, 77, 15);
INSERT INTO public.games VALUES (44, '2022-12-10', 533, 531, 15);
INSERT INTO public.games VALUES (45, '2022-12-10', 741, 740, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Cesar');
INSERT INTO public.users VALUES (2, 'cesar');
INSERT INTO public.users VALUES (3, 'user_1670637886723');
INSERT INTO public.users VALUES (4, 'user_1670637886722');
INSERT INTO public.users VALUES (5, 'user_1670638877600');
INSERT INTO public.users VALUES (6, 'user_1670638877599');
INSERT INTO public.users VALUES (7, 'user_1670638980934');
INSERT INTO public.users VALUES (8, 'user_1670638980933');
INSERT INTO public.users VALUES (9, 'user_1670639001554');
INSERT INTO public.users VALUES (10, 'user_1670639001553');
INSERT INTO public.users VALUES (11, 'user_1670639036449');
INSERT INTO public.users VALUES (12, 'user_1670639036448');
INSERT INTO public.users VALUES (13, 'user_1670639090107');
INSERT INTO public.users VALUES (14, 'user_1670639090106');
INSERT INTO public.users VALUES (15, 'user_1670639134223');
INSERT INTO public.users VALUES (16, 'user_1670639134222');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

