--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type text NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL
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
    name character varying NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer,
    description text,
    diameter integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    planet_type text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: probe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.probe (
    probe_id integer NOT NULL,
    name character varying NOT NULL,
    launch_year integer NOT NULL,
    target text,
    is_operational boolean NOT NULL
);


ALTER TABLE public.probe OWNER TO freecodecamp;

--
-- Name: probe_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.probe_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.probe_probe_id_seq OWNER TO freecodecamp;

--
-- Name: probe_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.probe_probe_id_seq OWNED BY public.probe.probe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    temperature integer NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: probe probe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe ALTER COLUMN probe_id SET DEFAULT nextval('public.probe_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'espiral', 10000, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'espiral', 13600, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'elíptica', 9000, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'espiral', 8000, true);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'espiral', 7000, false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'anular', 6000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 1, 'Moon of Earth', 3474);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 2, 'Moon of Mars', 22);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 2, 'Moon of Mars', 12);
INSERT INTO public.moon VALUES (4, 'Io', true, 4, 'Volcanic moon of Jupiter', 3643);
INSERT INTO public.moon VALUES (5, 'Europa', true, 4, 'Icy moon of Jupiter', 3121);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 4, 'Largest moon in solar system', 5268);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4, 'Cratered moon of Jupiter', 4820);
INSERT INTO public.moon VALUES (8, 'Titan', true, 5, 'Moon of Saturn with atmosphere', 5150);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 5, 'Icy moon of Saturn', 504);
INSERT INTO public.moon VALUES (10, 'Mimas', true, 5, 'Moon with large crater', 396);
INSERT INTO public.moon VALUES (11, 'Tethys', true, 5, 'Moon of Saturn', 1062);
INSERT INTO public.moon VALUES (12, 'Dione', true, 5, 'Moon of Saturn', 1123);
INSERT INTO public.moon VALUES (13, 'Rhea', true, 5, 'Moon of Saturn', 1528);
INSERT INTO public.moon VALUES (14, 'Iapetus', true, 5, 'Moon with two-tone coloration', 1469);
INSERT INTO public.moon VALUES (15, 'Hyperion', false, 5, 'Irregular moon of Saturn', 270);
INSERT INTO public.moon VALUES (16, 'KeplerMoon1', true, 6, 'Hypothetical moon of Kepler-22b', 1000);
INSERT INTO public.moon VALUES (17, 'GlieseMoon1', false, 7, 'Hypothetical moon of Gliese 581g', 800);
INSERT INTO public.moon VALUES (18, 'HDMoon1', true, 8, 'Hypothetical moon of HD 209458b', 1200);
INSERT INTO public.moon VALUES (19, 'TauMoon1', true, 9, 'Hypothetical moon of Tau Ceti e', 950);
INSERT INTO public.moon VALUES (20, 'TRAPPISTMoon1', false, 10, 'Moon of TRAPPIST-1d', 500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3, 0.0, true, 'terrestrial');
INSERT INTO public.planet VALUES (2, 'Mars', 3, 0.5, false, 'terrestrial');
INSERT INTO public.planet VALUES (3, 'Venus', 3, 0.3, false, 'terrestrial');
INSERT INTO public.planet VALUES (4, 'Jupiter', 3, 4.2, false, 'gas giant');
INSERT INTO public.planet VALUES (5, 'Saturn', 3, 8.5, false, 'gas giant');
INSERT INTO public.planet VALUES (6, 'Kepler-22b', 1, 600.0, false, 'exoplanet');
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 1, 20.3, false, 'exoplanet');
INSERT INTO public.planet VALUES (8, 'HD 209458b', 2, 150.0, false, 'hot Jupiter');
INSERT INTO public.planet VALUES (9, 'Tau Ceti e', 2, 12.0, false, 'terrestrial');
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1d', 4, 39.0, true, 'terrestrial');
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 4, 40.0, true, 'terrestrial');
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', 4, 41.0, false, 'terrestrial');


--
-- Data for Name: probe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.probe VALUES (1, 'Voyager 1', 1977, 'Interstellar space', true);
INSERT INTO public.probe VALUES (2, 'Cassini', 1997, 'Saturn', false);
INSERT INTO public.probe VALUES (3, 'New Horizons', 2006, 'Pluto', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 9940, false);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2, 3500, false);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 2, 3042, true);
INSERT INTO public.star VALUES (4, 'Vega', 3, 9602, false);
INSERT INTO public.star VALUES (5, 'Rigel', 4, 12100, false);
INSERT INTO public.star VALUES (6, 'Altair', 5, 7550, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: probe_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.probe_probe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: probe probe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe
    ADD CONSTRAINT probe_name_key UNIQUE (name);


--
-- Name: probe probe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe
    ADD CONSTRAINT probe_pkey PRIMARY KEY (probe_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

