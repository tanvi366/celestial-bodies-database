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
    name character varying(30),
    galaxy_type character varying(30),
    radius_light_years bigint,
    temperature integer,
    age_bill integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    is_spherical boolean,
    radius numeric(6,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    num_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    solarsystem_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    age integer,
    planet_count integer
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_type character varying(30),
    radius integer,
    colour character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 52850, 5800, 13);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 110000, 6000, 10);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 30000, 5500, 12);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 7000, 5000, 13);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Elliptical', 60000, 6500, 13);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral', 25000, 6200, 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, true, 1737.40);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 11.27);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 6.20);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 1821.60);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 1560.80);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, 2634.10);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, 2410.30);
INSERT INTO public.moon VALUES (8, 'Titan', 6, true, 2574.70);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, true, 763.80);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, true, 734.50);
INSERT INTO public.moon VALUES (11, 'Dione', 6, true, 561.40);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, true, 531.10);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, true, 252.10);
INSERT INTO public.moon VALUES (14, 'Titania', 7, true, 788.90);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, true, 761.40);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, true, 584.70);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, true, 578.90);
INSERT INTO public.moon VALUES (18, 'Triton', 8, true, 1353.40);
INSERT INTO public.moon VALUES (19, 'Nereid', 8, false, 170.00);
INSERT INTO public.moon VALUES (20, 'Proteus', 8, false, 210.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Closest planet to the Sun.', false, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Second planet from the Sun.', false, 0);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'The only known planet with life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'The Red Planet.', false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Largest planet in the Solar System.', false, 95);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas giant with extensive rings.', false, 146);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice giant with extreme axial tilt.', false, 28);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Outermost planet in the Solar System.', false, 16);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 2, 'Rocky exoplanet orbiting Proxima Centauri.', false, 0);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 3, 'Rocky exoplanet in the habitable zone.', false, 0);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 4, 'First confirmed habitable-zone exoplanet discovered by Kepler.', false, 0);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', 5, 'First exoplanet discovered around a Sun-like star.', false, 0);


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES (1, 'Solar System', 1, 5, 8);
INSERT INTO public.solarsystem VALUES (2, 'Proxima Centauri System', 1, 5, 1);
INSERT INTO public.solarsystem VALUES (3, 'TRAPPIST-1 System', 1, 8, 7);
INSERT INTO public.solarsystem VALUES (4, 'Kepler-22 System', 1, 4, 1);
INSERT INTO public.solarsystem VALUES (5, '51 Pegasi System', 1, 6, 1);
INSERT INTO public.solarsystem VALUES (6, 'M33-V1 System', 3, 10, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-Type Main Sequence', 696340, 'Yellow');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 'Red Dwarf', 107280, 'Red');
INSERT INTO public.star VALUES (3, 'TRAPPIST-1', 1, 'Red Dwarf', 84200, 'Red');
INSERT INTO public.star VALUES (4, 'Kepler-22', 1, 'G-Type Main Sequence', 684000, 'Yellow');
INSERT INTO public.star VALUES (5, '51 Pegasi', 1, 'G-Type Main Sequence', 879900, 'Yellow');
INSERT INTO public.star VALUES (6, 'M33-V1', 3, 'Blue Variable', 22000000, 'Yellow');


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
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


--
-- Name: solarsystem solarsystem_solarsystem_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_solarsystem_id_key UNIQUE (solarsystem_id);


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
-- Name: solarsystem solarsystem_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

