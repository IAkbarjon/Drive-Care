--
-- PostgreSQL database dump
--

\restrict 4gWaWDhMgeBpCyBF9sfTsDmxte4g6itX2VqE9HRrTlzdlRUa0xs3H0FQ4FAWMAF

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-18 22:53:37 +05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 232 (class 1259 OID 16458)
-- Name: material_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_products (
    id integer NOT NULL,
    material_id integer,
    product_id integer,
    materials_required numeric(6,4)
);


ALTER TABLE public.material_products OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16457)
-- Name: material_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_products_id_seq OWNER TO postgres;

--
-- TOC entry 4225 (class 0 OID 0)
-- Dependencies: 231
-- Name: material_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_products_id_seq OWNED BY public.material_products.id;


--
-- TOC entry 226 (class 1259 OID 16419)
-- Name: material_suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_suppliers (
    id integer NOT NULL,
    material_id integer,
    supplier_id integer,
    cost_price numeric(10,2),
    avg_supply_days integer
);


ALTER TABLE public.material_suppliers OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16418)
-- Name: material_suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_suppliers_id_seq OWNER TO postgres;

--
-- TOC entry 4226 (class 0 OID 0)
-- Dependencies: 225
-- Name: material_suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_suppliers_id_seq OWNED BY public.material_suppliers.id;


--
-- TOC entry 220 (class 1259 OID 16390)
-- Name: material_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_types (
    id integer NOT NULL,
    type_name character varying(40),
    losses_percent numeric(5,2)
);


ALTER TABLE public.material_types OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: material_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_types_id_seq OWNER TO postgres;

--
-- TOC entry 4227 (class 0 OID 0)
-- Dependencies: 219
-- Name: material_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_types_id_seq OWNED BY public.material_types.id;


--
-- TOC entry 222 (class 1259 OID 16398)
-- Name: materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materials (
    id integer NOT NULL,
    material_name character varying(40),
    type_id integer,
    unit_price numeric(10,2),
    stock_quantity numeric(10,3),
    min_quantity numeric(10,3),
    package_quantity numeric(10,3),
    measurement_unit character varying(10)
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16397)
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.materials_id_seq OWNER TO postgres;

--
-- TOC entry 4228 (class 0 OID 0)
-- Dependencies: 221
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- TOC entry 228 (class 1259 OID 16437)
-- Name: product_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_types (
    id integer NOT NULL,
    type_name character varying(40),
    coefficient numeric(5,2)
);


ALTER TABLE public.product_types OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16436)
-- Name: product_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_types_id_seq OWNER TO postgres;

--
-- TOC entry 4229 (class 0 OID 0)
-- Dependencies: 227
-- Name: product_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_types_id_seq OWNED BY public.product_types.id;


--
-- TOC entry 234 (class 1259 OID 16476)
-- Name: production_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.production_plans (
    id integer NOT NULL,
    period character varying(20),
    product_id integer,
    planing_quantity integer
);


ALTER TABLE public.production_plans OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16475)
-- Name: production_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.production_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.production_plans_id_seq OWNER TO postgres;

--
-- TOC entry 4230 (class 0 OID 0)
-- Dependencies: 233
-- Name: production_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.production_plans_id_seq OWNED BY public.production_plans.id;


--
-- TOC entry 230 (class 1259 OID 16445)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    article character varying(40),
    type_id integer,
    product_name character varying(40),
    min_price_for_partners numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16444)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 4231 (class 0 OID 0)
-- Dependencies: 229
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 236 (class 1259 OID 16489)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(40),
    description text
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16488)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 4232 (class 0 OID 0)
-- Dependencies: 235
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 224 (class 1259 OID 16411)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    supplier_name character varying(40),
    supplier_type character varying(40),
    inn character varying(40),
    rating integer,
    work_start_date timestamp without time zone
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16410)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suppliers_id_seq OWNER TO postgres;

--
-- TOC entry 4233 (class 0 OID 0)
-- Dependencies: 223
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- TOC entry 238 (class 1259 OID 16499)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(40),
    full_name character varying(60),
    role_id integer,
    status character varying(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16498)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4234 (class 0 OID 0)
-- Dependencies: 237
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4021 (class 2604 OID 16461)
-- Name: material_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_products ALTER COLUMN id SET DEFAULT nextval('public.material_products_id_seq'::regclass);


--
-- TOC entry 4018 (class 2604 OID 16422)
-- Name: material_suppliers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_suppliers ALTER COLUMN id SET DEFAULT nextval('public.material_suppliers_id_seq'::regclass);


--
-- TOC entry 4015 (class 2604 OID 16393)
-- Name: material_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_types ALTER COLUMN id SET DEFAULT nextval('public.material_types_id_seq'::regclass);


--
-- TOC entry 4016 (class 2604 OID 16401)
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- TOC entry 4019 (class 2604 OID 16440)
-- Name: product_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_types ALTER COLUMN id SET DEFAULT nextval('public.product_types_id_seq'::regclass);


--
-- TOC entry 4022 (class 2604 OID 16479)
-- Name: production_plans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.production_plans ALTER COLUMN id SET DEFAULT nextval('public.production_plans_id_seq'::regclass);


--
-- TOC entry 4020 (class 2604 OID 16448)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4023 (class 2604 OID 16492)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4017 (class 2604 OID 16414)
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- TOC entry 4024 (class 2604 OID 16502)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4213 (class 0 OID 16458)
-- Dependencies: 232
-- Data for Name: material_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_products (id, material_id, product_id, materials_required) FROM stdin;
80	4	12	0.1300
81	3	12	0.0300
24	1	4	0.4000
25	4	4	0.0700
26	3	4	0.0150
30	1	5	0.3400
33	10	5	0.0007
31	2	5	0.0500
76	14	11	1.0000
72	1	11	0.3800
75	6	11	0.0600
73	5	11	0.0900
74	7	11	0.0800
37	1	6	0.2000
41	9	6	0.0015
38	6	6	0.0500
39	5	6	0.0600
40	7	6	0.0400
49	15	7	1.0000
48	8	7	0.0120
47	3	7	0.3000
46	2	7	0.7500
45	\N	7	3.7000
58	13	9	2.0000
52	13	8	1.0000
14	14	2	1.0000
9	1	2	0.7700
13	11	2	0.0008
12	8	2	0.0040
11	3	2	0.0600
10	2	2	0.1200
1	1	1	0.3800
5	11	1	0.0005
4	8	1	0.0020
3	3	1	0.0300
2	2	1	0.0600
69	14	10	1.0000
65	1	10	0.7300
68	9	10	0.0040
67	4	10	0.0700
66	3	10	0.1000
17	1	3	0.3600
20	9	3	0.0020
19	4	3	0.0400
18	3	3	0.0500
82	14	12	1.0000
79	1	12	0.8100
16	19	2	1.0000
15	17	2	1.0000
8	18	1	1.0000
7	16	1	1.0000
6	13	1	1.0000
71	19	10	1.0000
70	17	10	1.0000
23	18	3	1.0000
22	16	3	1.0000
21	13	3	1.0000
84	19	12	1.0000
83	17	12	1.0000
29	18	4	1.0000
28	16	4	1.0000
27	13	4	1.0000
32	12	5	0.0300
36	18	5	1.0000
35	16	5	1.0000
34	13	5	1.0000
78	19	11	1.0000
77	17	11	1.0000
44	18	6	1.0000
43	17	6	1.0000
42	13	6	1.0000
51	19	7	1.0000
50	17	7	1.0000
61	22	9	2.0000
62	23	9	1.0000
63	24	9	1.0000
64	21	9	1.0000
60	18	9	2.0000
59	16	9	2.0000
55	22	8	1.0000
56	23	8	1.0000
57	20	8	1.0000
54	18	8	1.0000
53	16	8	1.0000
\.


--
-- TOC entry 4207 (class 0 OID 16419)
-- Dependencies: 226
-- Data for Name: material_suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_suppliers (id, material_id, supplier_id, cost_price, avg_supply_days) FROM stdin;
1	1	1	24.50	3
14	7	1	522.00	5
7	4	1	118.00	3
3	2	1	158.00	5
19	12	2	372.00	5
10	5	2	445.00	5
8	4	2	120.50	4
5	3	2	232.00	5
4	2	2	161.50	4
27	20	3	19.40	5
28	21	3	23.80	5
25	18	3	1.95	6
26	19	3	2.30	6
23	16	3	8.70	8
24	17	3	3.10	7
20	13	3	13.60	8
21	14	3	17.10	8
22	15	3	48.50	9
15	8	4	1395.00	4
16	9	4	1330.00	4
2	1	5	26.00	2
17	10	5	685.00	5
18	11	5	680.00	5
12	6	5	968.00	6
6	3	5	236.00	4
11	6	6	950.00	7
9	5	6	438.00	6
13	7	6	515.00	6
29	22	7	31.50	4
30	23	7	25.40	4
31	24	7	109.00	6
\.


--
-- TOC entry 4201 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: material_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_types (id, type_name, losses_percent) FROM stdin;
1	ПАВ анионные	0.18
2	ПАВ неионогенные	0.12
3	Растворители	0.22
4	Полимеры и силиконы	0.15
5	Воски	0.20
6	Отдушки	0.08
7	Красители	0.05
8	Вода очищенная	0.03
9	Упаковка ПЭТ	0.02
10	Триггеры и крышки	0.02
11	Этикетки	0.01
12	Картонная упаковка	0.04
13	Абразивные добавки	0.10
14	Комплектующие наборов	0.02
\.


--
-- TOC entry 4203 (class 0 OID 16398)
-- Dependencies: 222
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materials (id, material_name, type_id, unit_price, stock_quantity, min_quantity, package_quantity, measurement_unit) FROM stdin;
2	ПАВ анионный SLES	1	165.00	980.000	350.000	200.000	кг
3	ПАВ неионогенный APG	2	240.00	610.000	200.000	100.000	кг
4	Изопропиловый спирт	3	125.00	760.000	250.000	100.000	л
7	Полимерный блеск	4	540.00	210.000	80.000	25.000	кг
5	Силиконовая эмульсия	4	460.00	310.000	120.000	50.000	кг
6	Карнаубский воск	5	980.00	125.000	45.000	20.000	кг
9	Отдушка fresh	6	1380.00	38.000	10.000	5.000	л
8	Отдушка цитрус	6	1450.00	42.000	12.000	5.000	л
11	Краситель зеленый	7	710.00	16.000	5.000	1.000	кг
10	Краситель синий	7	720.00	18.000	5.000	1.000	кг
1	Вода деминерализованная	8	28.00	4200.000	1500.000	500.000	л
15	Канистра 5 л	9	52.00	960.000	300.000	100.000	шт
14	Флакон ПЭТ 1 л	9	18.20	5400.000	1800.000	300.000	шт
13	Флакон ПЭТ 500 мл	9	14.50	8600.000	2500.000	500.000	шт
17	Крышка screw 28 мм	10	3.60	6200.000	2000.000	500.000	шт
16	Триггер распылитель	10	9.40	7400.000	2200.000	500.000	шт
19	Этикетка 1 л	11	2.60	9800.000	3000.000	1000.000	шт
18	Этикетка 500 мл	11	2.20	13000.000	4000.000	1000.000	шт
21	Коробка транспортная средняя	12	26.00	1240.000	400.000	100.000	шт
20	Коробка транспортная малая	12	21.00	1750.000	500.000	100.000	шт
12	Абразив микрогранулы	13	390.00	195.000	60.000	25.000	кг
24	Ручной распылитель foam	14	115.00	540.000	180.000	30.000	шт
23	Губка полировальная	14	28.00	1700.000	500.000	100.000	шт
22	Салфетка микрофибра 30x30	14	34.00	2200.000	600.000	100.000	шт
\.


--
-- TOC entry 4209 (class 0 OID 16437)
-- Dependencies: 228
-- Data for Name: product_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_types (id, type_name, coefficient) FROM stdin;
1	Автошампунь	1.00
2	Очиститель салона	1.08
3	Очиститель стекол	0.95
4	Очиститель дисков	1.12
5	Полироль кузова	1.20
6	Концентрат	1.35
7	Подарочный набор	1.10
\.


--
-- TOC entry 4215 (class 0 OID 16476)
-- Dependencies: 234
-- Data for Name: production_plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.production_plans (id, period, product_id, planing_quantity) FROM stdin;
1	2025-11	1	2500
2	2025-11	2	1400
3	2025-11	3	1600
4	2025-11	4	1800
5	2025-11	5	1300
6	2025-11	6	900
7	2025-11	7	350
8	2025-11	8	500
9	2025-11	9	280
10	2025-11	10	700
11	2025-11	11	450
12	2025-11	12	650
\.


--
-- TOC entry 4211 (class 0 OID 16445)
-- Dependencies: 230
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, article, type_id, product_name, min_price_for_partners) FROM stdin;
2	DC-002	1	Автошампунь Citrus Foam 1 л	790.00
1	DC-001	1	Автошампунь Citrus Foam 500 мл	490.00
10	DC-010	2	Очиститель салона Fresh Interior 1 л	860.00
3	DC-003	2	Очиститель салона Fresh Interior 500 мл	520.00
12	DC-012	3	Очиститель стекол Crystal View 1 л	690.00
4	DC-004	3	Очиститель стекол Crystal View 500 мл	450.00
5	DC-005	4	Очиститель дисков Wheel Blast 500 мл	560.00
11	DC-011	5	Полироль кузова Graphene Gloss 1 л	1290.00
6	DC-006	5	Полироль кузова Carnauba Shine 500 мл	690.00
7	DC-007	6	Концентрат автошампуня Citrus Pro 5 л	2490.00
9	DC-009	7	Набор Drive Care Premium	2490.00
8	DC-008	7	Набор Drive Care Basic	1490.00
\.


--
-- TOC entry 4217 (class 0 OID 16489)
-- Dependencies: 236
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, role_name, description) FROM stdin;
1	Пользователь	Просмотр справочников и списков без редактирования
2	Менеджер	Просмотр, добавление и редактирование материалов и производственного плана
3	Администратор	Полный доступ, включая пользователей, роли и справочники
\.


--
-- TOC entry 4205 (class 0 OID 16411)
-- Dependencies: 224
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (id, supplier_name, supplier_type, inn, rating, work_start_date) FROM stdin;
1	ХимТрейд Поволжье	ООО	7701123401	8	2021-02-15 00:00:00
2	ПромСырье Групп	ООО	7701984502	7	2020-11-03 00:00:00
3	Packaging Line	АО	7812456703	9	2019-06-18 00:00:00
4	Aroma Solutions	ООО	5402876504	8	2022-01-27 00:00:00
5	CleanTech Supply	ООО	6673451205	6	2023-03-12 00:00:00
6	Полимер Плюс	АО	5029345606	7	2021-09-01 00:00:00
7	АвтоКосметик Комплект	ИП	2311456707	8	2022-05-20 00:00:00
\.


--
-- TOC entry 4219 (class 0 OID 16499)
-- Dependencies: 238
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, login, full_name, role_id, status) FROM stdin;
5	sokolov	Соколов Артем Игоревич	1	blocked
2	smirnova	Смирнова Анна Павловна	1	active
4	morozova	Морозова Елена Викторовна	2	active
1	ivanov	Иванов Илья Сергеевич	2	active
6	admin	Системный администратор	3	active
3	petrov	Петров Дмитрий Олегович	3	active
\.


--
-- TOC entry 4235 (class 0 OID 0)
-- Dependencies: 231
-- Name: material_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_products_id_seq', 84, true);


--
-- TOC entry 4236 (class 0 OID 0)
-- Dependencies: 225
-- Name: material_suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_suppliers_id_seq', 31, true);


--
-- TOC entry 4237 (class 0 OID 0)
-- Dependencies: 219
-- Name: material_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_types_id_seq', 14, true);


--
-- TOC entry 4238 (class 0 OID 0)
-- Dependencies: 221
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materials_id_seq', 24, true);


--
-- TOC entry 4239 (class 0 OID 0)
-- Dependencies: 227
-- Name: product_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_types_id_seq', 7, true);


--
-- TOC entry 4240 (class 0 OID 0)
-- Dependencies: 233
-- Name: production_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.production_plans_id_seq', 12, true);


--
-- TOC entry 4241 (class 0 OID 0)
-- Dependencies: 229
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 12, true);


--
-- TOC entry 4242 (class 0 OID 0)
-- Dependencies: 235
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 4243 (class 0 OID 0)
-- Dependencies: 223
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 7, true);


--
-- TOC entry 4244 (class 0 OID 0)
-- Dependencies: 237
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 4038 (class 2606 OID 16464)
-- Name: material_products material_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_products
    ADD CONSTRAINT material_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4032 (class 2606 OID 16425)
-- Name: material_suppliers material_suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_suppliers
    ADD CONSTRAINT material_suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 4026 (class 2606 OID 16396)
-- Name: material_types material_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_types
    ADD CONSTRAINT material_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4028 (class 2606 OID 16404)
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- TOC entry 4034 (class 2606 OID 16443)
-- Name: product_types product_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4040 (class 2606 OID 16482)
-- Name: production_plans production_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.production_plans
    ADD CONSTRAINT production_plans_pkey PRIMARY KEY (id);


--
-- TOC entry 4036 (class 2606 OID 16451)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4042 (class 2606 OID 16497)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4030 (class 2606 OID 16417)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 4044 (class 2606 OID 16505)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4049 (class 2606 OID 16465)
-- Name: material_products material_products_material_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_products
    ADD CONSTRAINT material_products_material_id_fkey FOREIGN KEY (material_id) REFERENCES public.materials(id);


--
-- TOC entry 4050 (class 2606 OID 16470)
-- Name: material_products material_products_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_products
    ADD CONSTRAINT material_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4046 (class 2606 OID 16426)
-- Name: material_suppliers material_suppliers_material_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_suppliers
    ADD CONSTRAINT material_suppliers_material_id_fkey FOREIGN KEY (material_id) REFERENCES public.materials(id);


--
-- TOC entry 4047 (class 2606 OID 16431)
-- Name: material_suppliers material_suppliers_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_suppliers
    ADD CONSTRAINT material_suppliers_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id);


--
-- TOC entry 4045 (class 2606 OID 16405)
-- Name: materials materials_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.material_types(id);


--
-- TOC entry 4051 (class 2606 OID 16483)
-- Name: production_plans production_plans_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.production_plans
    ADD CONSTRAINT production_plans_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4048 (class 2606 OID 16452)
-- Name: products products_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.product_types(id);


--
-- TOC entry 4052 (class 2606 OID 16506)
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


-- Completed on 2026-05-18 22:53:37 +05

--
-- PostgreSQL database dump complete
--

\unrestrict 4gWaWDhMgeBpCyBF9sfTsDmxte4g6itX2VqE9HRrTlzdlRUa0xs3H0FQ4FAWMAF

