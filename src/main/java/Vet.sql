PGDMP  '                    |            vet    16.1    16.0 3    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    18706    vet    DATABASE     e   CREATE DATABASE vet WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE vet;
                postgres    false            �            1259    18708    animals    TABLE     9  CREATE TABLE public.animals (
    id bigint NOT NULL,
    breed character varying(255) NOT NULL,
    colour character varying(255),
    date_of_birth date,
    gender character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    species character varying(255) NOT NULL,
    customer_id bigint
);
    DROP TABLE public.animals;
       public         heap    postgres    false            �            1259    18707    animals_id_seq    SEQUENCE     w   CREATE SEQUENCE public.animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.animals_id_seq;
       public          postgres    false    216            D           0    0    animals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.animals_id_seq OWNED BY public.animals.id;
          public          postgres    false    215            �            1259    18717    appointments    TABLE     �   CREATE TABLE public.appointments (
    id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    animal_id bigint,
    doctor_id bigint
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    18716    appointments_id_seq    SEQUENCE     |   CREATE SEQUENCE public.appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.appointments_id_seq;
       public          postgres    false    218            E           0    0    appointments_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;
          public          postgres    false    217            �            1259    18724    available_dates    TABLE     o   CREATE TABLE public.available_dates (
    id bigint NOT NULL,
    available_date date,
    doctor_id bigint
);
 #   DROP TABLE public.available_dates;
       public         heap    postgres    false            �            1259    18723    available_dates_id_seq    SEQUENCE        CREATE SEQUENCE public.available_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.available_dates_id_seq;
       public          postgres    false    220            F           0    0    available_dates_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.available_dates_id_seq OWNED BY public.available_dates.id;
          public          postgres    false    219            �            1259    18731 	   customers    TABLE       CREATE TABLE public.customers (
    id bigint NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    mail character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(255) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    18730    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    222            G           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    221            �            1259    18740    doctors    TABLE     �   CREATE TABLE public.doctors (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            �            1259    18739    doctors_id_seq    SEQUENCE     w   CREATE SEQUENCE public.doctors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.doctors_id_seq;
       public          postgres    false    224            H           0    0    doctors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;
          public          postgres    false    223            �            1259    18749    vaccines    TABLE     �   CREATE TABLE public.vaccines (
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    protection_finish_date date,
    protection_start_date date,
    animal_id bigint
);
    DROP TABLE public.vaccines;
       public         heap    postgres    false            �            1259    18748    vaccines_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vaccines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vaccines_id_seq;
       public          postgres    false    226            I           0    0    vaccines_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vaccines_id_seq OWNED BY public.vaccines.id;
          public          postgres    false    225            �           2604    18711 
   animals id    DEFAULT     h   ALTER TABLE ONLY public.animals ALTER COLUMN id SET DEFAULT nextval('public.animals_id_seq'::regclass);
 9   ALTER TABLE public.animals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    18720    appointments id    DEFAULT     r   ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);
 >   ALTER TABLE public.appointments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    18727    available_dates id    DEFAULT     x   ALTER TABLE ONLY public.available_dates ALTER COLUMN id SET DEFAULT nextval('public.available_dates_id_seq'::regclass);
 A   ALTER TABLE public.available_dates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    18734    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18743 
   doctors id    DEFAULT     h   ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);
 9   ALTER TABLE public.doctors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    18752    vaccines id    DEFAULT     j   ALTER TABLE ONLY public.vaccines ALTER COLUMN id SET DEFAULT nextval('public.vaccines_id_seq'::regclass);
 :   ALTER TABLE public.vaccines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            3          0    18708    animals 
   TABLE DATA           g   COPY public.animals (id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
    public          postgres    false    216   �9       5          0    18717    appointments 
   TABLE DATA           R   COPY public.appointments (id, appointment_date, animal_id, doctor_id) FROM stdin;
    public          postgres    false    218   �:       7          0    18724    available_dates 
   TABLE DATA           H   COPY public.available_dates (id, available_date, doctor_id) FROM stdin;
    public          postgres    false    220   �:       9          0    18731 	   customers 
   TABLE DATA           I   COPY public.customers (id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    222   9;       ;          0    18740    doctors 
   TABLE DATA           G   COPY public.doctors (id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    224   �;       =          0    18749    vaccines 
   TABLE DATA           l   COPY public.vaccines (id, code, name, protection_finish_date, protection_start_date, animal_id) FROM stdin;
    public          postgres    false    226   �<       J           0    0    animals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.animals_id_seq', 5, true);
          public          postgres    false    215            K           0    0    appointments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.appointments_id_seq', 5, true);
          public          postgres    false    217            L           0    0    available_dates_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.available_dates_id_seq', 7, true);
          public          postgres    false    219            M           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 5, true);
          public          postgres    false    221            N           0    0    doctors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.doctors_id_seq', 5, true);
          public          postgres    false    223            O           0    0    vaccines_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vaccines_id_seq', 9, true);
          public          postgres    false    225            �           2606    18715    animals animals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.animals DROP CONSTRAINT animals_pkey;
       public            postgres    false    216            �           2606    18722    appointments appointments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    218            �           2606    18729 $   available_dates available_dates_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.available_dates
    ADD CONSTRAINT available_dates_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.available_dates DROP CONSTRAINT available_dates_pkey;
       public            postgres    false    220            �           2606    18738    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    222            �           2606    18747    doctors doctors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    224            �           2606    18756    vaccines vaccines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT vaccines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT vaccines_pkey;
       public            postgres    false    226            �           2606    18762 (   appointments fk95vepu86o8syqtux9gkr71bhy    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk95vepu86o8syqtux9gkr71bhy FOREIGN KEY (animal_id) REFERENCES public.animals(id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk95vepu86o8syqtux9gkr71bhy;
       public          postgres    false    216    218    3475            �           2606    18757 #   animals fkb36lt3kj4mrbdx5btxmp4j60n    FK CONSTRAINT     �   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fkb36lt3kj4mrbdx5btxmp4j60n FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 M   ALTER TABLE ONLY public.animals DROP CONSTRAINT fkb36lt3kj4mrbdx5btxmp4j60n;
       public          postgres    false    222    3481    216            �           2606    18777 $   vaccines fkeasdy15b2kp5j4k13x2dfudqs    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT fkeasdy15b2kp5j4k13x2dfudqs FOREIGN KEY (animal_id) REFERENCES public.animals(id);
 N   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT fkeasdy15b2kp5j4k13x2dfudqs;
       public          postgres    false    3475    216    226            �           2606    18767 (   appointments fkmujeo4tymoo98cmf7uj3vsv76    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fkmujeo4tymoo98cmf7uj3vsv76 FOREIGN KEY (doctor_id) REFERENCES public.doctors(id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fkmujeo4tymoo98cmf7uj3vsv76;
       public          postgres    false    218    3483    224            �           2606    18772 +   available_dates fknb419ilm71d71rm584rk460pk    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_dates
    ADD CONSTRAINT fknb419ilm71d71rm584rk460pk FOREIGN KEY (doctor_id) REFERENCES public.doctors(id);
 U   ALTER TABLE ONLY public.available_dates DROP CONSTRAINT fknb419ilm71d71rm584rk460pk;
       public          postgres    false    3483    220    224            3   �   x�U�M�0����)n������"OmJ[Bk\ȵgЃ	�Ę�n��)`��0=[H!�L�`U�ث��x?��EA%���`����������l��^9�J�R��A�3_db�(q�e��v��#*�|�m��_6���9���E"S�Z��'�WH:����C�      5   M   x�M���0�w<E(��T@ga�9(R�������H�dB�G\�srOw��o�j���5a���r՚��s x��      7   6   x�3�4202�50�50�4�2Ap�9��L\N.38�� (k�����qqq 8�      9   �   x�M�1�0Eg�0U[ځ�aaeq�i���JH���K��r�l�`$H��o�g����E���([#���l�	�Ⱥ�މ�;��|�J��#Z�m
a"�PBbp����PrK�y��w|@�s�8��*j��ȅw�P�1J#�5sB�wsDKV�:���J>hޒH�S�Q��9c�}�_Y       ;   �   x�U�1�@�z�0�RhI�6��f���w1��՞n9�Ca�j�?�������=��(��Ҝ�;��i��ٖz�J�# �3Y�������B����%�3�H�x�9�5��*��<�tjI%Ov�+Ƒս�&���y�����	"~�^M�      =   �   x�3����H-H,�,�4202�5 !�X���8M��98�3��rJS��J�J��J��ӄ˂�-,���5/-5�8�2?��Y��%�[�Og��mũ�� 9S�X�i�e��©��Y\��[�Z��4cNC�=... U�.U     