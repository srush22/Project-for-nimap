toc.dat                                                                                             0000600 0004000 0002000 00000011375 14543524577 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   :    )                {            project    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    26916    project    DATABASE     �   CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE project;
                postgres    false         �            1259    26979    category    TABLE     c   CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false         �            1259    26978    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    216         �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    215         �            1259    26986    product    TABLE     �   CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    category_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false         �            1259    26985    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    218         �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    217                    2604    26997    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                     2604    27009 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218         �          0    26979    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    216       4790.dat �          0    26986    product 
   TABLE DATA           ?   COPY public.product (id, name, price, category_id) FROM stdin;
    public          postgres    false    218       4792.dat �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 40, true);
          public          postgres    false    215         �           0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 122, true);
          public          postgres    false    217         "           2606    26999    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    216         $           2606    27011    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    218         %           2606    27000     product product_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);
 J   ALTER TABLE ONLY public.product DROP CONSTRAINT product_category_id_fkey;
       public          postgres    false    4642    218    216                                                                                                                                                                                                                                                                           4790.dat                                                                                            0000600 0004000 0002000 00000001203 14543524577 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Electronics
2	Clothing
3	Home and Garden
4	Books
5	Toys
6	Sports and Outdoors
7	Beauty and Personal Care
8	Automotive
9	Health and Wellness
10	Pets
11	Furniture
12	Food and Beverages
13	Jewelry
14	Music
15	Movies
16	Games
17	Art and Craft
18	Travel
19	Fitness
20	Electrical Appliances
21	Baby Products
22	Stationery
23	Tools and Hardware
24	Computers and Accessories
25	Mobile Phones
26	Watches
27	Shoes
28	Outdoor Gear
29	Party Supplies
30	Kitchenware
31	Home Decor
32	Gadgets
33	Pet Supplies
34	DIY and Crafts
35	Wearable Tech
36	Office Supplies
37	Camping and Outdoor
38	Party and Events
39	Cooking Appliances
40	Fashion Accessories
\.


                                                                                                                                                                                                                                                                                                                                                                                             4792.dat                                                                                            0000600 0004000 0002000 00000006242 14543524577 0014303 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Smartphone	599.99	1
2	Laptop	1099.99	1
3	Headphones	89.99	1
4	T-Shirt	19.99	2
5	Jeans	39.99	2
6	Sweater	49.99	2
7	Table Lamp	29.99	3
8	Garden Tools Set	39.99	3
9	Throw Pillow	14.99	3
10	The Great Gatsby	12.99	4
11	Programming Basics	34.99	4
12	Cooking for Beginners	24.99	4
13	Building Blocks	19.99	5
14	Remote Control Car	29.99	5
15	Doll Set	14.99	5
16	Yoga Mat	24.99	6
17	Basketball	19.99	6
18	Camping Tent	79.99	6
19	Facial Cleanser	9.99	7
20	Perfume	49.99	7
21	Hair Dryer	34.99	7
22	Car Wax	14.99	8
23	Jump Starter	39.99	8
24	Car Seat Covers	29.99	8
25	Vitamins Pack	17.99	9
26	Fitness Tracker	49.99	9
27	Aromatherapy Diffuser	24.99	9
28	Pet Bed	29.99	10
29	Dog Leash	12.99	10
30	Cat Litter Box	19.99	10
31	Coffee Table	79.99	11
32	Sofa	299.99	11
33	Bookshelf	49.99	11
34	Coffee Beans	9.99	12
35	Chocolate Assortment	14.99	12
36	Wine Bottle	24.99	12
37	Diamond Necklace	499.99	13
38	Gold Bracelet	299.99	13
39	Silver Earrings	49.99	13
40	Guitar	149.99	14
41	Bluetooth Speaker	39.99	14
42	Vinyl Record	19.99	14
43	Blu-ray Movie Collection	69.99	15
44	Movie Poster Set	14.99	15
45	Popcorn Maker	29.99	15
46	Board Game Set	24.99	16
47	Video Game Console	299.99	16
48	Playing Cards	4.99	16
49	Canvas Painting Kit	19.99	17
50	Sketchbook	9.99	17
51	Sculpture Tools Set	14.99	17
52	Luggage Set	129.99	18
53	Travel Pillow	9.99	18
54	Travel Adapter	14.99	18
55	Dumbbell Set	49.99	19
56	Fitness Mat	19.99	19
57	Resistance Bands	14.99	19
58	Coffee Maker	49.99	20
59	Toaster	24.99	20
60	Blender	34.99	20
61	Baby Stroller	89.99	21
62	Diaper Bag	29.99	21
63	Baby Monitor	39.99	21
64	Notebook Set	9.99	22
65	Pen and Pencil Bundle	4.99	22
66	Desk Organizer	14.99	22
67	Drill Kit	79.99	23
68	Toolbox Set	49.99	23
69	Screwdriver Set	14.99	23
70	External Hard Drive	79.99	24
71	Wireless Mouse	19.99	24
72	USB-C Hub	29.99	24
73	Flagship Smartphone	899.99	25
74	Budget Phone	299.99	25
75	Wireless Charger	19.99	25
76	Luxury Watch	999.99	26
77	Sports Watch	149.99	26
78	Fashion Watch	49.99	26
79	Running Shoes	79.99	27
80	Dress Shoes	59.99	27
81	Sneakers	39.99	27
82	Camping Tent	79.99	28
83	Hiking Backpack	49.99	28
84	Sleeping Bag	29.99	28
85	Party Balloons	9.99	29
86	Disposable Tableware Set	14.99	29
87	Party Decorations Kit	19.99	29
88	Cookware Set	99.99	30
89	Knife Block Set	49.99	30
90	Non-Stick Bakeware	29.99	30
91	Decorative Vase	29.99	31
92	Wall Art Canvas	39.99	31
93	Throw Blanket	19.99	31
94	Smartwatch	129.99	32
95	Wireless Earbuds	79.99	32
96	Mini Drone	49.99	32
97	Pet Grooming Kit	34.99	33
98	Interactive Cat Toy	14.99	33
99	Dog Bed with Canopy	59.99	33
100	Woodworking Tool Set	69.99	34
101	Knitting Kit	24.99	34
102	Candle Making Supplies	19.99	34
103	Fitness Tracker Watch	89.99	35
104	Smart Glasses	149.99	35
105	GPS Running Watch	119.99	35
106	Desk Organizer Set	29.99	36
107	Executive Leather Chair	149.99	36
108	Wireless Charging Pad	19.99	36
109	Portable Camping Stove	39.99	37
110	Inflatable Sleeping Pad	29.99	37
111	Collapsible Water Bottle	9.99	37
112	Disposable Party Plates	14.99	38
113	LED Party Lights	19.99	38
114	Party Photo Booth Props	9.99	38
115	Air Fryer	89.99	39
116	Blender and Food Processor Combo	49.99	39
117	Electric Pressure Cooker	69.99	39
118	Designer Handbag	249.99	40
119	Sunglasses	79.99	40
\.


                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000010424 14543524577 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE project;
--
-- Name: project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE project OWNER TO postgres;

\connect project

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
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    category_id bigint
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name) FROM stdin;
\.
COPY public.category (id, name) FROM '$$PATH$$/4790.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, price, category_id) FROM stdin;
\.
COPY public.product (id, name, price, category_id) FROM '$$PATH$$/4792.dat';

--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 40, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 122, true);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product product_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            