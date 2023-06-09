PGDMP                         {         
   portafolio    15.1    15.1 f    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    43325 
   portafolio    DATABASE     �   CREATE DATABASE portafolio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE portafolio;
                postgres    false            �            1259    51927    Carrito    TABLE     \   CREATE TABLE public."Carrito" (
    id integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public."Carrito";
       public         heap    postgres    false            �            1259    51926    Carrito_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Carrito_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Carrito_id_seq";
       public          postgres    false    241            �           0    0    Carrito_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Carrito_id_seq" OWNED BY public."Carrito".id;
          public          postgres    false    240            �            1259    51882 	   Categoria    TABLE     r   CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre_categoria character varying(20) NOT NULL
);
    DROP TABLE public."Categoria";
       public         heap    postgres    false            �            1259    51881    Categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Categoria_id_seq";
       public          postgres    false    233            �           0    0    Categoria_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;
          public          postgres    false    232            �            1259    51920    Cliente    TABLE     ,  CREATE TABLE public."Cliente" (
    id integer NOT NULL,
    nombre_cliente character varying(100) NOT NULL,
    fecha_nacimiento timestamp with time zone NOT NULL,
    "contraseña" character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    rut character varying(13) NOT NULL
);
    DROP TABLE public."Cliente";
       public         heap    postgres    false            �            1259    51919    Cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cliente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Cliente_id_seq";
       public          postgres    false    239            �           0    0    Cliente_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Cliente_id_seq" OWNED BY public."Cliente".id;
          public          postgres    false    238            �            1259    52009 
   Comentario    TABLE     �   CREATE TABLE public."Comentario" (
    id integer NOT NULL,
    detalles character varying(100) NOT NULL,
    puntaje integer NOT NULL,
    id_comentario integer,
    id_producto integer
);
     DROP TABLE public."Comentario";
       public         heap    postgres    false            �            1259    52008    Comentario_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Comentario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Comentario_id_seq";
       public          postgres    false    253            �           0    0    Comentario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Comentario_id_seq" OWNED BY public."Comentario".id;
          public          postgres    false    252            �            1259    51956    Cupon    TABLE     �   CREATE TABLE public."Cupon" (
    id integer NOT NULL,
    cupon double precision NOT NULL,
    nombre_cupon character varying(20) NOT NULL
);
    DROP TABLE public."Cupon";
       public         heap    postgres    false            �            1259    51955    Cupon_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cupon_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Cupon_id_seq";
       public          postgres    false    245            �           0    0    Cupon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Cupon_id_seq" OWNED BY public."Cupon".id;
          public          postgres    false    244            �            1259    51889 	   Descuento    TABLE     �   CREATE TABLE public."Descuento" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    por_descuento double precision NOT NULL
);
    DROP TABLE public."Descuento";
       public         heap    postgres    false            �            1259    51888    Descuento_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Descuento_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Descuento_id_seq";
       public          postgres    false    235            �           0    0    Descuento_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Descuento_id_seq" OWNED BY public."Descuento".id;
          public          postgres    false    234            �            1259    51939    Detalle_carrito    TABLE     �   CREATE TABLE public."Detalle_carrito" (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    id_carrito integer,
    id_producto integer
);
 %   DROP TABLE public."Detalle_carrito";
       public         heap    postgres    false            �            1259    51938    Detalle_carrito_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Detalle_carrito_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Detalle_carrito_id_seq";
       public          postgres    false    243            �           0    0    Detalle_carrito_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Detalle_carrito_id_seq" OWNED BY public."Detalle_carrito".id;
          public          postgres    false    242            �            1259    51980    Detalle_orden    TABLE     �   CREATE TABLE public."Detalle_orden" (
    id integer NOT NULL,
    precio integer NOT NULL,
    cantidad integer NOT NULL,
    id_orden integer,
    id_producto integer
);
 #   DROP TABLE public."Detalle_orden";
       public         heap    postgres    false            �            1259    51979    Detalle_orden_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Detalle_orden_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Detalle_orden_id_seq";
       public          postgres    false    249            �           0    0    Detalle_orden_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Detalle_orden_id_seq" OWNED BY public."Detalle_orden".id;
          public          postgres    false    248            �            1259    51997 	   Direccion    TABLE     �   CREATE TABLE public."Direccion" (
    id integer NOT NULL,
    region character varying(50) NOT NULL,
    ciudad character varying(50) NOT NULL,
    calle character varying(100) NOT NULL,
    id_direccion integer
);
    DROP TABLE public."Direccion";
       public         heap    postgres    false            �            1259    51996    Direccion_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Direccion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Direccion_id_seq";
       public          postgres    false    251            �           0    0    Direccion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Direccion_id_seq" OWNED BY public."Direccion".id;
          public          postgres    false    250            �            1259    51963    Orden    TABLE     �   CREATE TABLE public."Orden" (
    id integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    tipo_boleta character varying(50) NOT NULL,
    medio_pago character varying(50) NOT NULL,
    id_cliente integer,
    id_cupon integer
);
    DROP TABLE public."Orden";
       public         heap    postgres    false            �            1259    51962    Orden_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orden_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Orden_id_seq";
       public          postgres    false    247            �           0    0    Orden_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Orden_id_seq" OWNED BY public."Orden".id;
          public          postgres    false    246            �            1259    51896    Producto    TABLE     x  CREATE TABLE public."Producto" (
    id integer NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    precio integer NOT NULL,
    stock integer NOT NULL,
    imagen character varying(200) NOT NULL,
    descripcion character varying(200),
    fecha timestamp with time zone NOT NULL,
    id_vendedor integer,
    id_categoria integer,
    id_descuento integer
);
    DROP TABLE public."Producto";
       public         heap    postgres    false            �            1259    51895    Producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Producto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Producto_id_seq";
       public          postgres    false    237            �           0    0    Producto_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Producto_id_seq" OWNED BY public."Producto".id;
          public          postgres    false    236            �            1259    51873    Vendedor    TABLE     �   CREATE TABLE public."Vendedor" (
    id integer NOT NULL,
    nombre_vendedor character varying(100) NOT NULL,
    "contraseña" character varying(100) NOT NULL,
    rut character varying(13) NOT NULL
);
    DROP TABLE public."Vendedor";
       public         heap    postgres    false            �            1259    51872    Vendedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Vendedor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Vendedor_id_seq";
       public          postgres    false    231            �           0    0    Vendedor_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Vendedor_id_seq" OWNED BY public."Vendedor".id;
          public          postgres    false    230            �           2604    51930 
   Carrito id    DEFAULT     l   ALTER TABLE ONLY public."Carrito" ALTER COLUMN id SET DEFAULT nextval('public."Carrito_id_seq"'::regclass);
 ;   ALTER TABLE public."Carrito" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    51885    Categoria id    DEFAULT     p   ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);
 =   ALTER TABLE public."Categoria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    51923 
   Cliente id    DEFAULT     l   ALTER TABLE ONLY public."Cliente" ALTER COLUMN id SET DEFAULT nextval('public."Cliente_id_seq"'::regclass);
 ;   ALTER TABLE public."Cliente" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    52012    Comentario id    DEFAULT     r   ALTER TABLE ONLY public."Comentario" ALTER COLUMN id SET DEFAULT nextval('public."Comentario_id_seq"'::regclass);
 >   ALTER TABLE public."Comentario" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    51959    Cupon id    DEFAULT     h   ALTER TABLE ONLY public."Cupon" ALTER COLUMN id SET DEFAULT nextval('public."Cupon_id_seq"'::regclass);
 9   ALTER TABLE public."Cupon" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    51892    Descuento id    DEFAULT     p   ALTER TABLE ONLY public."Descuento" ALTER COLUMN id SET DEFAULT nextval('public."Descuento_id_seq"'::regclass);
 =   ALTER TABLE public."Descuento" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    51942    Detalle_carrito id    DEFAULT     |   ALTER TABLE ONLY public."Detalle_carrito" ALTER COLUMN id SET DEFAULT nextval('public."Detalle_carrito_id_seq"'::regclass);
 C   ALTER TABLE public."Detalle_carrito" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    51983    Detalle_orden id    DEFAULT     x   ALTER TABLE ONLY public."Detalle_orden" ALTER COLUMN id SET DEFAULT nextval('public."Detalle_orden_id_seq"'::regclass);
 A   ALTER TABLE public."Detalle_orden" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    52000    Direccion id    DEFAULT     p   ALTER TABLE ONLY public."Direccion" ALTER COLUMN id SET DEFAULT nextval('public."Direccion_id_seq"'::regclass);
 =   ALTER TABLE public."Direccion" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    51966    Orden id    DEFAULT     h   ALTER TABLE ONLY public."Orden" ALTER COLUMN id SET DEFAULT nextval('public."Orden_id_seq"'::regclass);
 9   ALTER TABLE public."Orden" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    51899    Producto id    DEFAULT     n   ALTER TABLE ONLY public."Producto" ALTER COLUMN id SET DEFAULT nextval('public."Producto_id_seq"'::regclass);
 <   ALTER TABLE public."Producto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    51876    Vendedor id    DEFAULT     n   ALTER TABLE ONLY public."Vendedor" ALTER COLUMN id SET DEFAULT nextval('public."Vendedor_id_seq"'::regclass);
 <   ALTER TABLE public."Vendedor" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            x          0    51927    Carrito 
   TABLE DATA           3   COPY public."Carrito" (id, id_cliente) FROM stdin;
    public          postgres    false    241   )y       p          0    51882 	   Categoria 
   TABLE DATA           ;   COPY public."Categoria" (id, nombre_categoria) FROM stdin;
    public          postgres    false    233   Jy       v          0    51920    Cliente 
   TABLE DATA           d   COPY public."Cliente" (id, nombre_cliente, fecha_nacimiento, "contraseña", email, rut) FROM stdin;
    public          postgres    false    239   ry       �          0    52009 
   Comentario 
   TABLE DATA           Y   COPY public."Comentario" (id, detalles, puntaje, id_comentario, id_producto) FROM stdin;
    public          postgres    false    253   �y       |          0    51956    Cupon 
   TABLE DATA           :   COPY public."Cupon" (id, cupon, nombre_cupon) FROM stdin;
    public          postgres    false    245   �y       r          0    51889 	   Descuento 
   TABLE DATA           @   COPY public."Descuento" (id, nombre, por_descuento) FROM stdin;
    public          postgres    false    235    z       z          0    51939    Detalle_carrito 
   TABLE DATA           R   COPY public."Detalle_carrito" (id, cantidad, id_carrito, id_producto) FROM stdin;
    public          postgres    false    243   z       �          0    51980    Detalle_orden 
   TABLE DATA           V   COPY public."Detalle_orden" (id, precio, cantidad, id_orden, id_producto) FROM stdin;
    public          postgres    false    249   :z       �          0    51997 	   Direccion 
   TABLE DATA           N   COPY public."Direccion" (id, region, ciudad, calle, id_direccion) FROM stdin;
    public          postgres    false    251   �z       ~          0    51963    Orden 
   TABLE DATA           [   COPY public."Orden" (id, fecha, tipo_boleta, medio_pago, id_cliente, id_cupon) FROM stdin;
    public          postgres    false    247   �z       t          0    51896    Producto 
   TABLE DATA           �   COPY public."Producto" (id, nombre_producto, precio, stock, imagen, descripcion, fecha, id_vendedor, id_categoria, id_descuento) FROM stdin;
    public          postgres    false    237   �{       n          0    51873    Vendedor 
   TABLE DATA           M   COPY public."Vendedor" (id, nombre_vendedor, "contraseña", rut) FROM stdin;
    public          postgres    false    231   �}       �           0    0    Carrito_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Carrito_id_seq"', 1, true);
          public          postgres    false    240            �           0    0    Categoria_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Categoria_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    Cliente_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Cliente_id_seq"', 1, false);
          public          postgres    false    238            �           0    0    Comentario_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Comentario_id_seq"', 1, false);
          public          postgres    false    252            �           0    0    Cupon_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Cupon_id_seq"', 1, false);
          public          postgres    false    244            �           0    0    Descuento_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Descuento_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Detalle_carrito_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Detalle_carrito_id_seq"', 22, true);
          public          postgres    false    242            �           0    0    Detalle_orden_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Detalle_orden_id_seq"', 18, true);
          public          postgres    false    248            �           0    0    Direccion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Direccion_id_seq"', 1, false);
          public          postgres    false    250            �           0    0    Orden_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Orden_id_seq"', 38, true);
          public          postgres    false    246            �           0    0    Producto_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Producto_id_seq"', 9, true);
          public          postgres    false    236            �           0    0    Vendedor_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Vendedor_id_seq"', 1, false);
          public          postgres    false    230            �           2606    51932    Carrito Carrito_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Carrito"
    ADD CONSTRAINT "Carrito_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Carrito" DROP CONSTRAINT "Carrito_pkey";
       public            postgres    false    241            �           2606    51887    Categoria Categoria_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Categoria" DROP CONSTRAINT "Categoria_pkey";
       public            postgres    false    233            �           2606    51925    Cliente Cliente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "Cliente_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT "Cliente_pkey";
       public            postgres    false    239            �           2606    52014    Comentario Comentario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Comentario"
    ADD CONSTRAINT "Comentario_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Comentario" DROP CONSTRAINT "Comentario_pkey";
       public            postgres    false    253            �           2606    51961    Cupon Cupon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Cupon"
    ADD CONSTRAINT "Cupon_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Cupon" DROP CONSTRAINT "Cupon_pkey";
       public            postgres    false    245            �           2606    51894    Descuento Descuento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Descuento"
    ADD CONSTRAINT "Descuento_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Descuento" DROP CONSTRAINT "Descuento_pkey";
       public            postgres    false    235            �           2606    51944 $   Detalle_carrito Detalle_carrito_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Detalle_carrito"
    ADD CONSTRAINT "Detalle_carrito_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Detalle_carrito" DROP CONSTRAINT "Detalle_carrito_pkey";
       public            postgres    false    243            �           2606    51985     Detalle_orden Detalle_orden_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Detalle_orden"
    ADD CONSTRAINT "Detalle_orden_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Detalle_orden" DROP CONSTRAINT "Detalle_orden_pkey";
       public            postgres    false    249            �           2606    52002    Direccion Direccion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Direccion"
    ADD CONSTRAINT "Direccion_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Direccion" DROP CONSTRAINT "Direccion_pkey";
       public            postgres    false    251            �           2606    51968    Orden Orden_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Orden"
    ADD CONSTRAINT "Orden_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Orden" DROP CONSTRAINT "Orden_pkey";
       public            postgres    false    247            �           2606    51903    Producto Producto_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "Producto_pkey";
       public            postgres    false    237            �           2606    51878    Vendedor Vendedor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Vendedor"
    ADD CONSTRAINT "Vendedor_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Vendedor" DROP CONSTRAINT "Vendedor_pkey";
       public            postgres    false    231            �           2606    51880    Vendedor Vendedor_rut_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."Vendedor"
    ADD CONSTRAINT "Vendedor_rut_key" UNIQUE (rut);
 G   ALTER TABLE ONLY public."Vendedor" DROP CONSTRAINT "Vendedor_rut_key";
       public            postgres    false    231            �           2606    51933    Carrito Carrito_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Carrito"
    ADD CONSTRAINT "Carrito_id_cliente_fkey" FOREIGN KEY (id_cliente) REFERENCES public."Cliente"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."Carrito" DROP CONSTRAINT "Carrito_id_cliente_fkey";
       public          postgres    false    239    3267    241            �           2606    52015 (   Comentario Comentario_id_comentario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comentario"
    ADD CONSTRAINT "Comentario_id_comentario_fkey" FOREIGN KEY (id_comentario) REFERENCES public."Cliente"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Comentario" DROP CONSTRAINT "Comentario_id_comentario_fkey";
       public          postgres    false    3267    239    253            �           2606    52020 &   Comentario Comentario_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comentario"
    ADD CONSTRAINT "Comentario_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES public."Producto"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Comentario" DROP CONSTRAINT "Comentario_id_producto_fkey";
       public          postgres    false    253    237    3265            �           2606    51945 /   Detalle_carrito Detalle_carrito_id_carrito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_carrito"
    ADD CONSTRAINT "Detalle_carrito_id_carrito_fkey" FOREIGN KEY (id_carrito) REFERENCES public."Carrito"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public."Detalle_carrito" DROP CONSTRAINT "Detalle_carrito_id_carrito_fkey";
       public          postgres    false    3269    243    241            �           2606    51950 0   Detalle_carrito Detalle_carrito_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_carrito"
    ADD CONSTRAINT "Detalle_carrito_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES public."Producto"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public."Detalle_carrito" DROP CONSTRAINT "Detalle_carrito_id_producto_fkey";
       public          postgres    false    3265    243    237            �           2606    51986 )   Detalle_orden Detalle_orden_id_orden_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_orden"
    ADD CONSTRAINT "Detalle_orden_id_orden_fkey" FOREIGN KEY (id_orden) REFERENCES public."Orden"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."Detalle_orden" DROP CONSTRAINT "Detalle_orden_id_orden_fkey";
       public          postgres    false    249    3275    247            �           2606    51991 ,   Detalle_orden Detalle_orden_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_orden"
    ADD CONSTRAINT "Detalle_orden_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES public."Producto"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Detalle_orden" DROP CONSTRAINT "Detalle_orden_id_producto_fkey";
       public          postgres    false    249    237    3265            �           2606    52003 %   Direccion Direccion_id_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Direccion"
    ADD CONSTRAINT "Direccion_id_direccion_fkey" FOREIGN KEY (id_direccion) REFERENCES public."Cliente"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Direccion" DROP CONSTRAINT "Direccion_id_direccion_fkey";
       public          postgres    false    3267    251    239            �           2606    51969    Orden Orden_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orden"
    ADD CONSTRAINT "Orden_id_cliente_fkey" FOREIGN KEY (id_cliente) REFERENCES public."Cliente"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Orden" DROP CONSTRAINT "Orden_id_cliente_fkey";
       public          postgres    false    247    239    3267            �           2606    51974    Orden Orden_id_cupon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orden"
    ADD CONSTRAINT "Orden_id_cupon_fkey" FOREIGN KEY (id_cupon) REFERENCES public."Cupon"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public."Orden" DROP CONSTRAINT "Orden_id_cupon_fkey";
       public          postgres    false    247    245    3273            �           2606    51909 #   Producto Producto_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_id_categoria_fkey" FOREIGN KEY (id_categoria) REFERENCES public."Categoria"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "Producto_id_categoria_fkey";
       public          postgres    false    233    3261    237            �           2606    51914 #   Producto Producto_id_descuento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_id_descuento_fkey" FOREIGN KEY (id_descuento) REFERENCES public."Descuento"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "Producto_id_descuento_fkey";
       public          postgres    false    3263    235    237            �           2606    51904 "   Producto Producto_id_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Producto"
    ADD CONSTRAINT "Producto_id_vendedor_fkey" FOREIGN KEY (id_vendedor) REFERENCES public."Vendedor"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "Producto_id_vendedor_fkey";
       public          postgres    false    3257    237    231            x      x�3�4����� ]      p      x�3���+�L-������� (�7      v   D   x�3���L��I,�4202�54"+0�50�442615��rH�M���K���4�34c]C�=... �S      �      x������ � �      |      x������ � �      r      x������ � �      z      x������ � �      �   r   x�M��� D�����臀&R���Ñ�mi�.0(D�1������o�	��HXV��-��~��I$�3a7�׆Ԩ`�h��H���ܫ={T��l�Y=$�z���/���/:      �      x������ � �      ~   �   x�}�Kj�1��S��H�d�'�&��*���u��@�>��h�S��^��&ߟ������si�ׯ�w�v~= I�J��Rh���#�,�V-f3`��JaYX ��K�Yx�-�+A��zY��,4t�=�OHpt�R �]����!��Vr��fa�ɧ������b&�����U
KB��B}�7<�!��g:��4��C      t   �  x����j�0��)�b��n޵�tQJ��@�壉�=l���	m��&���������6.�.q?==�R!@9��m;�m�ӡ��ڭ[܆T�y*w�+ߟ����� 5h�y�e�ߧ���N1��D�Ʉ���i�q�-����~��Z�����dO�rh���\Uw�*,�μx�zX�Ǽ�LF˖�#X�����l�.�����2���yZ��zw���ülO�(`.Z!g�h2��ao�-:��佲K��Wk��b¥�W_�[t���iXu��4�Zt�)�����H��w�K�q�S���)�#�$��G���܂k��(�r���O�!����>�C����Ε^�c׋�Yl@��"+���.�·�����ͥ�V��q�s�?(-9�Yj��d��$fN!����%��rt�u9?7���OS��>���r|�����AG]���}�H�,��{ �B�V���.�R�f�(ށZ�+��.�}���w��o2�e(      n      x������ � �     