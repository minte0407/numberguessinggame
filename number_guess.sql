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
-- Name: current_game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.current_game (
    secret_number integer DEFAULT 0,
    number_of_guesses integer DEFAULT 0
);


ALTER TABLE public.current_game OWNER TO freecodecamp;

--
-- Name: player; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 10000
);


ALTER TABLE public.player OWNER TO freecodecamp;

--
-- Data for Name: current_game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.player VALUES ('user_1726584261410', 1, 238);
INSERT INTO public.player VALUES ('user_1726586367848', 1, 266);
INSERT INTO public.player VALUES ('user_1726584261411', 2, 16);
INSERT INTO public.player VALUES ('user_1726584388170', 0, 10000);
INSERT INTO public.player VALUES ('user_1726584388171', 3, 31);
INSERT INTO public.player VALUES ('user_1726586367849', 3, 68);
INSERT INTO public.player VALUES ('user_1726584580045', 1, 71);
INSERT INTO public.player VALUES ('user_1726584580046', 1, 33);
INSERT INTO public.player VALUES ('user_1726583275911', 2, 136);
INSERT INTO public.player VALUES ('user_1726583275912', 2, 207);
INSERT INTO public.player VALUES ('user_1726586422018', 0, 10000);
INSERT INTO public.player VALUES ('user_1726584706195', 0, 10000);
INSERT INTO public.player VALUES ('user_1726583446617', 2, 40);
INSERT INTO public.player VALUES ('user_1726584706196', 2, 165);
INSERT INTO public.player VALUES ('user_1726584766016', 1, 206);
INSERT INTO public.player VALUES ('user_1726583618553', 2, 131);
INSERT INTO public.player VALUES ('mINTE', 2, 3);
INSERT INTO public.player VALUES ('user_1726586422019', 3, 141);
INSERT INTO public.player VALUES ('user_1726584766015', 1, 268);
INSERT INTO public.player VALUES ('user_1726585178163', 1, 19);
INSERT INTO public.player VALUES ('user_1726586502328', 0, 10000);
INSERT INTO public.player VALUES ('user_1726586502329', 1, 98);
INSERT INTO public.player VALUES ('user_1726585178162', 2, 169);
INSERT INTO public.player VALUES ('user_1726583921912', 1, 97);
INSERT INTO public.player VALUES ('user_1726583921913', 2, 288);
INSERT INTO public.player VALUES ('user_1726586647653', 0, 10000);
INSERT INTO public.player VALUES ('user_1726585267860', 1, 5);
INSERT INTO public.player VALUES ('user_1726584217360', 1, 52);
INSERT INTO public.player VALUES ('user_1726585267861', 3, 190);
INSERT INTO public.player VALUES ('user_1726584217361', 2, 112);
INSERT INTO public.player VALUES ('user_1726585505971', 0, 10000);
INSERT INTO public.player VALUES ('user_1726586647654', 2, 236);
INSERT INTO public.player VALUES ('user_1726585505972', 1, 265);
INSERT INTO public.player VALUES ('Testas', 2, 1);
INSERT INTO public.player VALUES ('Minte', 15, 0);
INSERT INTO public.player VALUES ('mINTAUTAS', 2, 0);
INSERT INTO public.player VALUES ('Greta', 3, 3);
INSERT INTO public.player VALUES ('user_1726586257666', 1, 252);
INSERT INTO public.player VALUES ('Minte2', 1, 0);
INSERT INTO public.player VALUES ('user_1726586257667', 2, 80);
INSERT INTO public.player VALUES ('user_1726586315293', 2, 269);
INSERT INTO public.player VALUES ('user_1726586315294', 1, 188);
INSERT INTO public.player VALUES ('user_1726587768958', 2, 191);
INSERT INTO public.player VALUES ('user_1726587768959', 5, 87);
INSERT INTO public.player VALUES ('Mintautas', 11, 0);
INSERT INTO public.player VALUES ('user_1726587882343', 2, 646);
INSERT INTO public.player VALUES ('user_1726587882344', 5, 522);


--
-- PostgreSQL database dump complete
--

