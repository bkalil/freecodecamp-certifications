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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years numeric(6,2),
    example1 text NOT NULL,
    example2 text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer,
    temp_in_celcius integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years numeric(6,2),
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    description text,
    galaxy_id integer NOT NULL,
    example1 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 1, NULL);
INSERT INTO public.black_holes VALUES (2, 2, NULL);
INSERT INTO public.black_holes VALUES (3, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Soreya', 49.00, 'random', NULL);
INSERT INTO public.galaxy VALUES (2, 'Oumar', 21.00, 'random', NULL);
INSERT INTO public.galaxy VALUES (3, 'Binta', 10.00, 'random', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (9, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (10, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (11, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (12, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (13, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (14, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (15, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (16, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (17, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (18, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (19, NULL, NULL, 'random', NULL);
INSERT INTO public.galaxy VALUES (20, NULL, NULL, 'random', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, 5, NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, 6, NULL);
INSERT INTO public.star VALUES (7, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES (8, NULL, NULL, 8, NULL);
INSERT INTO public.star VALUES (9, NULL, NULL, 9, NULL);
INSERT INTO public.star VALUES (10, NULL, NULL, 10, NULL);
INSERT INTO public.star VALUES (11, NULL, NULL, 11, NULL);
INSERT INTO public.star VALUES (12, NULL, NULL, 12, NULL);
INSERT INTO public.star VALUES (13, NULL, NULL, 13, NULL);
INSERT INTO public.star VALUES (14, NULL, NULL, 14, NULL);
INSERT INTO public.star VALUES (15, NULL, NULL, 15, NULL);
INSERT INTO public.star VALUES (16, NULL, NULL, 16, NULL);
INSERT INTO public.star VALUES (17, NULL, NULL, 17, NULL);
INSERT INTO public.star VALUES (18, NULL, NULL, 18, NULL);
INSERT INTO public.star VALUES (19, NULL, NULL, 19, NULL);
INSERT INTO public.star VALUES (20, NULL, NULL, 20, NULL);


--
-- Name: black_holes_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 20, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: black_holes black_holes_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_moon_id_key UNIQUE (moon_id);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: black_holes black_holes_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

