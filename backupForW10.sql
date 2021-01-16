PGDMP         6                 y            w4    13.1    13.1 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    w4    DATABASE     b   CREATE DATABASE w4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE w4;
                inyil    false            �            1259    16411    category    TABLE     b   CREATE TABLE public.category (
    id bigint NOT NULL,
    tipe character varying(50) NOT NULL
);
    DROP TABLE public.category;
       public         heap    inyil    false            �            1259    16409    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          inyil    false    201            �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          inyil    false    200            �            1259    24626    history    TABLE     �   CREATE TABLE public.history (
    id bigint NOT NULL,
    nama character varying(50)[] NOT NULL,
    total bigint NOT NULL,
    kasir character varying(50) NOT NULL,
    "user" character varying(30)
);
    DROP TABLE public.history;
       public         heap    inyil    false            �            1259    24622    history_id_seq    SEQUENCE     w   CREATE SEQUENCE public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.history_id_seq;
       public          inyil    false    207            �           0    0    history_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;
          public          inyil    false    205            �            1259    24624    history_total_seq    SEQUENCE     z   CREATE SEQUENCE public.history_total_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.history_total_seq;
       public          inyil    false    207            �           0    0    history_total_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.history_total_seq OWNED BY public.history.total;
          public          inyil    false    206            �            1259    24603    products    TABLE     �   CREATE TABLE public.products (
    id bigint NOT NULL,
    nama character varying(50) NOT NULL,
    harga bigint NOT NULL,
    url_img character varying(200) NOT NULL,
    kategori_id bigint NOT NULL
);
    DROP TABLE public.products;
       public         heap    inyil    false            �            1259    24601    products_harga_seq    SEQUENCE     {   CREATE SEQUENCE public.products_harga_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.products_harga_seq;
       public          inyil    false    204            �           0    0    products_harga_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.products_harga_seq OWNED BY public.products.harga;
          public          inyil    false    203            �            1259    24599    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          inyil    false    204            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          inyil    false    202            �            1259    24638    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(40) NOT NULL,
    email character varying(40) NOT NULL,
    pswd character varying NOT NULL,
    role character varying(10)
);
    DROP TABLE public.users;
       public         heap    inyil    false            �            1259    24636    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          inyil    false    209            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          inyil    false    208            :           2604    16414    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          inyil    false    200    201    201            =           2604    24629 
   history id    DEFAULT     h   ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);
 9   ALTER TABLE public.history ALTER COLUMN id DROP DEFAULT;
       public          inyil    false    207    205    207            >           2604    24630    history total    DEFAULT     n   ALTER TABLE ONLY public.history ALTER COLUMN total SET DEFAULT nextval('public.history_total_seq'::regclass);
 <   ALTER TABLE public.history ALTER COLUMN total DROP DEFAULT;
       public          inyil    false    206    207    207            ;           2604    24606    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          inyil    false    204    202    204            <           2604    24607    products harga    DEFAULT     p   ALTER TABLE ONLY public.products ALTER COLUMN harga SET DEFAULT nextval('public.products_harga_seq'::regclass);
 =   ALTER TABLE public.products ALTER COLUMN harga DROP DEFAULT;
       public          inyil    false    203    204    204            ?           2604    24641    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          inyil    false    209    208    209            �          0    16411    category 
   TABLE DATA           ,   COPY public.category (id, tipe) FROM stdin;
    public          inyil    false    201   n(       �          0    24626    history 
   TABLE DATA           A   COPY public.history (id, nama, total, kasir, "user") FROM stdin;
    public          inyil    false    207   �(       �          0    24603    products 
   TABLE DATA           I   COPY public.products (id, nama, harga, url_img, kategori_id) FROM stdin;
    public          inyil    false    204   �)       �          0    24638    users 
   TABLE DATA           <   COPY public.users (id, name, email, pswd, role) FROM stdin;
    public          inyil    false    209   �+       �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 57, true);
          public          inyil    false    200            �           0    0    history_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.history_id_seq', 42, true);
          public          inyil    false    205            �           0    0    history_total_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.history_total_seq', 1, false);
          public          inyil    false    206            �           0    0    products_harga_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.products_harga_seq', 1, false);
          public          inyil    false    203            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 75, true);
          public          inyil    false    202            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 20, true);
          public          inyil    false    208            A           2606    16416    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            inyil    false    201            E           2606    24635    history history_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            inyil    false    207            C           2606    24609    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            inyil    false    204            G           2606    24643    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            inyil    false    209            �       x�36�L)���.�26�L��O)����� UyB      �   5  x��S�n�0<�_aq��m!���ҜҨ����",��xT��^҇� 	H��igvvv�{�h�: Q�`ٯ�
\J)������s�}tEQ4�Tڶ�TF(�$�!�b���}�쇪(��t�VހDV�����4٦����-��E��P����@��z.X�p=�u��&���/irfe^��C��7w���W��6o����;���=�>�&���~�p쬖���?��)nw��2��)uO�,�VdW6I��A)[��|�n>��C���.��r�]|Dި� �.7�C�3�B���b�?QOA       �   �  x������0Fk�)���c�����44����f&����H�Æ�E$��9߽_,;�iZc?�L!إ�iyw<�ͼ��3-�s_.k��&�C���x?j��8��8�l��D�U�P�	9�;�<��4��R�ӥ�W�Ͼ,k������`F����`]�_y+"1q,xT�|~�WE�8�O��Ϊ�>��.{Mi3�d��tI��������L�~���+��{09�6y��&L��� ���4Ӳ���r�T-�6�4�/)c@$hɞ(����'���J�S�d��R�Mo��	��.8tž��}��y��F�3��/�w7%�FuFoL0�_�8uto[б�=43�v�kЙ��#���Vz�BTV�_�a�o>^�OcmAargn�!a=��N�z5���}��CW;������i~��z       �      x�m�˒�H�����5rQ.��EE@$fSB�
<�L�1��d��;yJ� ������ ��sUR�\����8UW~�l=�&=�*g'6tf��������慁�%�Nޛ���'kC���h"�X���N��*�t��3˾9����A�X*zB��n�}��=O����Z�֓7u�O���Orև,����^��U-�-qm����V��G�7��Ż����Y��F��+�V4���HM}��Z���@ʎo��p�%[��Ԅ���v95������O�0�f�V�I!Tq�Aз��á����WXh�":l�$���i#��P{��dY�U��+�(�"��|�:k�5�Nq�4_�c���F@>�驫��SH#�)�A*lo'������٪�[�sz��G�X|]�f���3�M �W~~��}.=�LD����D��b�Xs�q,��m���/q�9l̽w�s
?Ӻ��6"��
�=\}�y�D������d��W37@ZM3�3ut��7��?��N���'@�ۦ�>q��%^���2���/R�ȷZ|�����-U[�M��kDj y^��NhQ��cbp���e3{�D���߅���W�,-��R�7���O�-QY^!�ҟ�UE��M�ݍ΀b}�qɯ�x�![�5b�����Y6�J�D��{�P8�}F��`����;�]�fZGק%׈�U�]���(�<V��qIrk��LA��w��I{������/�,���?&�/��<��a-ҍ�8v`^�L/NXLc-�y�w��cѓ��o&���     