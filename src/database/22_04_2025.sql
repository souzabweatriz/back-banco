PGDMP      3    
            }            cadastro    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16409    cadastro    DATABASE     n   CREATE DATABASE cadastro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE cadastro;
                     postgres    false            �            1259    16446    posts    TABLE     }   CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    description character varying(200)
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16445    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public               postgres    false    220                        0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public               postgres    false    219            �            1259    16411    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    photo text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16410    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            ]           2604    16449    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            \           2604    16414    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16446    posts 
   TABLE DATA           9   COPY public.posts (id, user_id, description) FROM stdin;
    public               postgres    false    220   K       �          0    16411    users 
   TABLE DATA           7   COPY public.users (id, name, email, photo) FROM stdin;
    public               postgres    false    218   �                  0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 16, true);
          public               postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 89, true);
          public               postgres    false    217            c           2606    16451    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    220            _           2606    16418    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            a           2606    16416    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            d           2606    16452    posts posts_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_fkey;
       public               postgres    false    4705    220    218            �   O   x�34�4��/Pp��24�4��:�@�$_��Qì�|{{.CSNcN{�24jp-UH��Wprt��u�sQTT����� ^�      �     x�uVKr�F]ç�	����]�O�Ȏ�v����@dKn�٭4���Ws�,SY�W�"��hR�b6Xz�� �Ї�g�+�\+��!~��J��C�J�|w6�[��2.�D�pVC�|Æ��s|�j��ac��2A��1 �Y�k��\i����cȄ �z]c�R���H.��6���1l
�t匶��w��`����7�J:����1�>�w�Q�~E(+64 ʱE[`2�%��h��������O�]����ll7����������.�Ԕ�[e�e����}���@�8�XU1�A[�K�8��L�&�O���͊�@M����m6D����].�C���@o��P��@	��U�=��'\x�(�J���B�	�.�]9&��iR�ZO Gp^�zε�8q�F`�p�a�F�j�lO�<H��lߘ����ڨ�A��#����*y��/�q0�+�1�[G䅢d#@S�hP�a�X�@�ъ���R��x��tee�T��}��Z�;Ŝ,�:��p�V���㊪�`#@C�$���(��c	r�z;���)�{�+���1<Q���H�6���~TF�̡�<�
u��}�ݩ��7��epC�*M<���@�ZF+�SxқXѹG*�f��4�AQ4]b��ʝ�|DCH� .y�Vʼqn ��D��\[ʇ_��!̜��Ֆ������t��γ�hj�9v�4�(@�Rt,�9=�yu�l�(��hnB�`mI~ōV�K����˧Z���hl
��y\�[²d#��j�n$뎑<�I-L��B�v0j�>����x?�g��J������`�y$s�4@͚���ᆚm����"G i�9�v�v^���Nvc�B��V��/G�5�zN�n<%b�&���;*�)T+�)���<��q�Ow
o'z�K������R邔G w��Sy�N�#��8d�B��#��v��
;�*M��߿,�,@�Y��-a����Q�epO/��	���tJ��"<��F�+W� SwH�J�%n�v�|����������h2��M.�������=�2I�JHژ��"Z�̟��c��F��<Q�ݾ%te0T�
T
7���o�����	I��i���v�.�M�ܜVt�6��o_��Q8�}��+�;W��=�g�7��;�9��p��S2L�7Ϝ��V����H����t�7��۪U�R�l�8eMJ�\(�t��6[�K��M�-8W�"[�U��e�������wz�|���;��ggg��9�A     