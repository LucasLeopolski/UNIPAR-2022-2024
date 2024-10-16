PGDMP     &    -                {            Aula1206    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25176    Aula1206    DATABASE     l   CREATE DATABASE "Aula1206" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Aula1206";
                postgres    false            �            1259    25177    departamento    TABLE     g   CREATE TABLE public.departamento (
    codigo integer NOT NULL,
    descricao character varying(50)
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    25180    dependentes    TABLE     �   CREATE TABLE public.dependentes (
    codigo integer NOT NULL,
    cod_funcionario integer NOT NULL,
    nome character varying(50),
    data_nasc date
);
    DROP TABLE public.dependentes;
       public         heap    postgres    false            �            1259    25183    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    codigo integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(150) NOT NULL,
    telefone character varying(20) NOT NULL,
    cod_departamento integer,
    idade integer
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    25186    salarios    TABLE     �   CREATE TABLE public.salarios (
    codigo integer NOT NULL,
    id_funcionario integer,
    valor_salario numeric,
    data_alteracao date
);
    DROP TABLE public.salarios;
       public         heap    postgres    false                      0    25177    departamento 
   TABLE DATA           9   COPY public.departamento (codigo, descricao) FROM stdin;
    public          postgres    false    214   �                 0    25180    dependentes 
   TABLE DATA           O   COPY public.dependentes (codigo, cod_funcionario, nome, data_nasc) FROM stdin;
    public          postgres    false    215   B                 0    25183    funcionario 
   TABLE DATA           `   COPY public.funcionario (codigo, nome, endereco, telefone, cod_departamento, idade) FROM stdin;
    public          postgres    false    216   �                 0    25186    salarios 
   TABLE DATA           Y   COPY public.salarios (codigo, id_funcionario, valor_salario, data_alteracao) FROM stdin;
    public          postgres    false    217   r       {           2606    25190    departamento departamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    214            }           2606    25192    dependentes dependentes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dependentes
    ADD CONSTRAINT dependentes_pkey PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.dependentes DROP CONSTRAINT dependentes_pkey;
       public            postgres    false    215                       2606    25194    funcionario funcionario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    216            �           2606    25196    salarios salarios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salarios
    ADD CONSTRAINT salarios_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.salarios DROP CONSTRAINT salarios_pkey;
       public            postgres    false    217            �           2606    25197    funcionario fk_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_departamento FOREIGN KEY (cod_departamento) REFERENCES public.departamento(codigo);
 E   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_departamento;
       public          postgres    false    3451    214    216            �           2606    25202    dependentes fk_funcionario    FK CONSTRAINT     �   ALTER TABLE ONLY public.dependentes
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (cod_funcionario) REFERENCES public.funcionario(codigo);
 D   ALTER TABLE ONLY public.dependentes DROP CONSTRAINT fk_funcionario;
       public          postgres    false    3455    216    215               F   x��K
�0�u�a��m"�K��ݬr{h��X��˻7m���̵�+6��S���4�. > �c         p   x�U��
�0 �ݯ����]@[�2��5Z$��(�z�V�͌�@���ne2W�r(+�G�Ր��'�XI<~@�����W7Z��Z�w��_h�;�b�Z⎄�� �_!N         �  x�M�Kn�0���S���|���H�Q7���fb1�,(�9Oѣ�b�J@	�7�KJ$��O��<�y&<�K|[BJ��wΡV�����L{§8�ha�P�-��i��T
DE<�7������µ�O����)�aJ���O�ͥ�߉��!%V{ơ�j�g*t�H��ʔa)���4pH~ۢ��E�l'Q� ��vp��H)Kv%^2�Sj>o����@W��!�D�U~�/96�5.�}�Ȩ�`Zg�G���Eӱ�%�VSh��0��X8kdUc�U�����y��~I����D����ӕ�Z�u;+D3*vp��b"dǅ�]+���>��ͮ���Pi!�M>�nAx?��VNOce����Q^N.�pF�k;��^)E<�2���0wv��$l�ĳ�r���n����$�r         r   x�]���0D����]��K��#RƓ(�>��E$�A��a�D�x8sq�A��qsC����E+�{$?mى�;��}�dFbmw��=�x@��קJ��<<l��Q��3{M	+?     