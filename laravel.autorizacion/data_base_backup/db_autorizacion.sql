PGDMP      6    
            }            db_autorizacion    15.13 (Debian 15.13-0+deb12u1)    16.3 q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16389    db_autorizacion    DATABASE     {   CREATE DATABASE db_autorizacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_BO.UTF-8';
    DROP DATABASE db_autorizacion;
                naabol    false            �            1259    16390    aerolineas_id_seq    SEQUENCE     z   CREATE SEQUENCE public.aerolineas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.aerolineas_id_seq;
       public          naabol    false            �            1259    16391    aeronaves_id_seq    SEQUENCE     y   CREATE SEQUENCE public.aeronaves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.aeronaves_id_seq;
       public          naabol    false            �            1259    16392    amhs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.amhs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.amhs_id_seq;
       public          naabol    false            �            1259    16393    arrivos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.arrivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.arrivos_id_seq;
       public          naabol    false            �            1259    16394    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          naabol    false            �            1259    16419    failed_jobs    TABLE     ]  CREATE TABLE public.failed_jobs (
    id bigint DEFAULT nextval('public.failed_jobs_id_seq'::regclass) NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    naabol    false    218            �            1259    16395    ficha_estados_id_seq    SEQUENCE     }   CREATE SEQUENCE public.ficha_estados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ficha_estados_id_seq;
       public          naabol    false            �            1259    16396    ficha_neo_plan_vuelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ficha_neo_plan_vuelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ficha_neo_plan_vuelo_id_seq;
       public          naabol    false            �            1259    16397    fpls_id_seq    SEQUENCE     t   CREATE SEQUENCE public.fpls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.fpls_id_seq;
       public          naabol    false            �            1259    16398    metars_id_seq    SEQUENCE     v   CREATE SEQUENCE public.metars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.metars_id_seq;
       public          naabol    false            �            1259    16399    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          naabol    false            �            1259    16426 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer DEFAULT nextval('public.migrations_id_seq'::regclass) NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    naabol    false    223            �            1259    16400    notams_id_seq    SEQUENCE     v   CREATE SEQUENCE public.notams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.notams_id_seq;
       public          naabol    false            �            1259    16401    pais_id_seq    SEQUENCE     t   CREATE SEQUENCE public.pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pais_id_seq;
       public          naabol    false            �            1259    16430    pais    TABLE     3  CREATE TABLE public.pais (
    id integer DEFAULT nextval('public.pais_id_seq'::regclass) NOT NULL,
    geo_code character varying(255),
    pais character varying(255),
    activo integer,
    fk_user integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.pais;
       public         heap    naabol    false    225            �            1259    16402    paises_id_seq    SEQUENCE     v   CREATE SEQUENCE public.paises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.paises_id_seq;
       public          naabol    false            �            1259    16403 :   parametrica_descripcions_pk_id_parametrica_descripcion_seq    SEQUENCE     �   CREATE SEQUENCE public.parametrica_descripcions_pk_id_parametrica_descripcion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.parametrica_descripcions_pk_id_parametrica_descripcion_seq;
       public          naabol    false            �            1259    16436    parametrica_descripcions    TABLE     *  CREATE TABLE public.parametrica_descripcions (
    pk_id_parametrica_descripcion bigint DEFAULT nextval('public.parametrica_descripcions_pk_id_parametrica_descripcion_seq'::regclass) NOT NULL,
    descripcion text,
    sigla character varying(255),
    nivel integer DEFAULT 0,
    activo integer DEFAULT 1 NOT NULL,
    fk_user integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    fk_id_parametrica integer NOT NULL,
    oaci integer DEFAULT 0,
    grupo integer DEFAULT 0,
    rol_nivel integer
);
 ,   DROP TABLE public.parametrica_descripcions;
       public         heap    naabol    false    227            �           0    0 =   COLUMN parametrica_descripcions.pk_id_parametrica_descripcion    COMMENT     �   COMMENT ON COLUMN public.parametrica_descripcions.pk_id_parametrica_descripcion IS 'CLAVE PRIMARIA DE LA DESCRIPCION DE LA PARAMETRICA';
          public          naabol    false    246            �           0    0 +   COLUMN parametrica_descripcions.descripcion    COMMENT     m   COMMENT ON COLUMN public.parametrica_descripcions.descripcion IS 'DESCRIPCION DE LA PARAMETRICA ESPECIFICA';
          public          naabol    false    246            �           0    0 %   COLUMN parametrica_descripcions.sigla    COMMENT     V   COMMENT ON COLUMN public.parametrica_descripcions.sigla IS 'SIGLA DE LA DESCRIPCION';
          public          naabol    false    246            �           0    0 %   COLUMN parametrica_descripcions.nivel    COMMENT     P   COMMENT ON COLUMN public.parametrica_descripcions.nivel IS 'NIVEL DEL USUARIO';
          public          naabol    false    246            �           0    0 &   COLUMN parametrica_descripcions.activo    COMMENT     O   COMMENT ON COLUMN public.parametrica_descripcions.activo IS 'ESTADO DE CAMPO';
          public          naabol    false    246            �           0    0 '   COLUMN parametrica_descripcions.fk_user    COMMENT     d   COMMENT ON COLUMN public.parametrica_descripcions.fk_user IS 'USUARIO QUE REGISTRA LA PARAMETRICA';
          public          naabol    false    246            �           0    0 1   COLUMN parametrica_descripcions.fk_id_parametrica    COMMENT     l   COMMENT ON COLUMN public.parametrica_descripcions.fk_id_parametrica IS 'RELACION CON LA TABLA PARAMETRICA';
          public          naabol    false    246            �           0    0 $   COLUMN parametrica_descripcions.oaci    COMMENT     X   COMMENT ON COLUMN public.parametrica_descripcions.oaci IS 'A QUE AEROPUERTO PERTENECE';
          public          naabol    false    246            �           0    0 %   COLUMN parametrica_descripcions.grupo    COMMENT     U   COMMENT ON COLUMN public.parametrica_descripcions.grupo IS 'AGRUPAMIENTO DE FICHAS';
          public          naabol    false    246            �           0    0 )   COLUMN parametrica_descripcions.rol_nivel    COMMENT     L   COMMENT ON COLUMN public.parametrica_descripcions.rol_nivel IS 'ROL NIVEL';
          public          naabol    false    246            �            1259    16404 "   parametricas_pk_id_parametrica_seq    SEQUENCE     �   CREATE SEQUENCE public.parametricas_pk_id_parametrica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.parametricas_pk_id_parametrica_seq;
       public          naabol    false            �            1259    16446    parametricas    TABLE     C  CREATE TABLE public.parametricas (
    pk_id_parametrica bigint DEFAULT nextval('public.parametricas_pk_id_parametrica_seq'::regclass) NOT NULL,
    descripcion text,
    activo integer DEFAULT 1 NOT NULL,
    fk_user integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.parametricas;
       public         heap    naabol    false    228            �           0    0 %   COLUMN parametricas.pk_id_parametrica    COMMENT     _   COMMENT ON COLUMN public.parametricas.pk_id_parametrica IS 'CLAVE PRIMARIA DE LA PARAMETRICA';
          public          naabol    false    247            �           0    0    COLUMN parametricas.descripcion    COMMENT     V   COMMENT ON COLUMN public.parametricas.descripcion IS 'DESCRIPCION DE LA PARAMETRICA';
          public          naabol    false    247            �           0    0    COLUMN parametricas.activo    COMMENT     C   COMMENT ON COLUMN public.parametricas.activo IS 'ESTADO DE CAMPO';
          public          naabol    false    247            �           0    0    COLUMN parametricas.fk_user    COMMENT     X   COMMENT ON COLUMN public.parametricas.fk_user IS 'USUARIO QUE REGISTRA LA PARAMETRICA';
          public          naabol    false    247            �            1259    16453    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    naabol    false            �            1259    16405    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          naabol    false            �            1259    16406    proceso_metars_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.proceso_metars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.proceso_metars_id_seq;
       public          naabol    false            �            1259    16407    proceso_nuevo_vuelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proceso_nuevo_vuelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.proceso_nuevo_vuelo_id_seq;
       public          naabol    false            �            1259    16408 $   proceso_rutas_predeterminadas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proceso_rutas_predeterminadas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.proceso_rutas_predeterminadas_id_seq;
       public          naabol    false            �            1259    16409    proceso_vuelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proceso_vuelo_id_seq
    START WITH 18803
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.proceso_vuelo_id_seq;
       public          naabol    false            �            1259    16410 "   registro_adicion_sobrevuelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_adicion_sobrevuelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.registro_adicion_sobrevuelo_id_seq;
       public          naabol    false            �            1259    16411    registro_autorizacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_autorizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.registro_autorizacion_id_seq;
       public          naabol    false            �            1259    16458    registro_autorizacion    TABLE       CREATE TABLE public.registro_autorizacion (
    id integer DEFAULT nextval('public.registro_autorizacion_id_seq'::regclass) NOT NULL,
    razon_social text,
    fecha_autorizacion date,
    numero_autorizacion text,
    cliente text,
    cliente2 text,
    tipo_aeronave text,
    nacionalidad text,
    peso text,
    piloto text,
    ruta text,
    ultimo_aeropuerto text,
    aeropuerto_destino text,
    objeto_vuelo text,
    tiempo_validez_inicio date,
    tiempo_validez_fin date,
    dias_adelanto integer,
    observaciones text,
    activo integer,
    fk_user integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    matricula text,
    pais text,
    medida_peso text,
    aeropuerto_alterno text,
    objeto_vuelo_aux text,
    tipo_autorizacion text,
    aeropuerto_entrada text,
    aeropuerto_entrada_alterno text,
    aeropuerto_salida text,
    aeropuerto_salida_alterno text,
    modelo text,
    tipo_array text,
    matricula_array text,
    peso_array text
);
 )   DROP TABLE public.registro_autorizacion;
       public         heap    naabol    false    235            �           0    0 )   COLUMN registro_autorizacion.razon_social    COMMENT     K   COMMENT ON COLUMN public.registro_autorizacion.razon_social IS 'operador';
          public          naabol    false    249            �           0    0 *   COLUMN registro_autorizacion.tipo_aeronave    COMMENT     H   COMMENT ON COLUMN public.registro_autorizacion.tipo_aeronave IS 'OACI';
          public          naabol    false    249            �           0    0 2   COLUMN registro_autorizacion.tiempo_validez_inicio    COMMENT     X   COMMENT ON COLUMN public.registro_autorizacion.tiempo_validez_inicio IS 'fecha_inicio';
          public          naabol    false    249            �           0    0 /   COLUMN registro_autorizacion.tiempo_validez_fin    COMMENT     R   COMMENT ON COLUMN public.registro_autorizacion.tiempo_validez_fin IS 'fecha_fin';
          public          naabol    false    249            �            1259    16412    registro_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.registro_cliente_id_seq;
       public          naabol    false            �            1259    16413    registro_matricula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_matricula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.registro_matricula_id_seq;
       public          naabol    false            �            1259    16414    rutas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.rutas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rutas_id_seq;
       public          naabol    false            �            1259    16415    rutas_puntos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.rutas_puntos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.rutas_puntos_id_seq;
       public          naabol    false            �            1259    16416     user_nivels_pk_id_user_nivel_seq    SEQUENCE     �   CREATE SEQUENCE public.user_nivels_pk_id_user_nivel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.user_nivels_pk_id_user_nivel_seq;
       public          naabol    false            �            1259    16464    user_nivels    TABLE     �  CREATE TABLE public.user_nivels (
    pk_id_user_nivel bigint DEFAULT nextval('public.user_nivels_pk_id_user_nivel_seq'::regclass) NOT NULL,
    fkp_rol integer DEFAULT 0,
    fkp_regional integer DEFAULT 0,
    fk_id_area integer DEFAULT 0,
    logueado integer DEFAULT 0,
    fk_user integer,
    activo integer DEFAULT 1,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    fk_id_user integer NOT NULL
);
    DROP TABLE public.user_nivels;
       public         heap    naabol    false    240            �           0    0    COLUMN user_nivels.fkp_rol    COMMENT     B   COMMENT ON COLUMN public.user_nivels.fkp_rol IS 'ROL AUTORIZAOD';
          public          naabol    false    250            �           0    0    COLUMN user_nivels.fkp_regional    COMMENT     S   COMMENT ON COLUMN public.user_nivels.fkp_regional IS 'REGIONAL U OFICINA CENTRAL';
          public          naabol    false    250            �           0    0    COLUMN user_nivels.fk_id_area    COMMENT     L   COMMENT ON COLUMN public.user_nivels.fk_id_area IS 'AREA AL QUE PERTENECE';
          public          naabol    false    250            �           0    0    COLUMN user_nivels.logueado    COMMENT     ?   COMMENT ON COLUMN public.user_nivels.logueado IS 'ROL ACTIVO';
          public          naabol    false    250            �           0    0    COLUMN user_nivels.fk_user    COMMENT     _   COMMENT ON COLUMN public.user_nivels.fk_user IS 'USUARIO QUIEN REGISTRO O ACTUALIZO REGISTRO';
          public          naabol    false    250            �           0    0    COLUMN user_nivels.fk_id_user    COMMENT     S   COMMENT ON COLUMN public.user_nivels.fk_id_user IS 'RELACIONA CON LA TABLA USERS';
          public          naabol    false    250            �            1259    16417    user_tips_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_tips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_tips_id_seq;
       public          naabol    false            �            1259    16473 	   user_tips    TABLE     B  CREATE TABLE public.user_tips (
    id integer DEFAULT nextval('public.user_tips_id_seq'::regclass) NOT NULL,
    pk_id_user integer,
    pk_id_tipo_ficha integer,
    pk_oaci integer,
    activo integer,
    fk_user integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.user_tips;
       public         heap    naabol    false    241            �            1259    16418    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          naabol    false            �            1259    16477    users    TABLE     �  CREATE TABLE public.users (
    id bigint DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    nivel integer,
    activo integer DEFAULT 1 NOT NULL,
    fk_user integer,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    naabol    false    242            �           0    0    COLUMN users.name    COMMENT     =   COMMENT ON COLUMN public.users.name IS 'NOMBRE DEL USUARIO';
          public          naabol    false    252            �           0    0    COLUMN users.email    COMMENT     =   COMMENT ON COLUMN public.users.email IS 'EMAIL DEL USUARIO';
          public          naabol    false    252            �           0    0    COLUMN users.nivel    COMMENT     =   COMMENT ON COLUMN public.users.nivel IS 'NIVEL DEL USUARIO';
          public          naabol    false    252            �           0    0    COLUMN users.activo    COMMENT     4   COMMENT ON COLUMN public.users.activo IS 'VIGENTE';
          public          naabol    false    252            �           0    0    COLUMN users.fk_user    COMMENT     \   COMMENT ON COLUMN public.users.fk_user IS 'USUARIO QUIEN REGISTRO O REALIZO ACTUALIZACION';
          public          naabol    false    252            �           0    0    COLUMN users.password    COMMENT     F   COMMENT ON COLUMN public.users.password IS 'CONTRASEÑA DEL USUARIO';
          public          naabol    false    252            �            1259    16486    vista_usuarios    VIEW     _  CREATE VIEW public.vista_usuarios AS
 SELECT users.id,
    users.name,
    users.email,
    users.nivel,
    parametrica_descripcions.descripcion AS rol,
    users.activo,
    users.fk_user,
    users.email_verified_at,
    users.password,
    users.remember_token,
    users.created_at,
    users.updated_at,
    COALESCE(user_tips.pk_id_tipo_ficha, 0) AS tipo_ficha,
    COALESCE(user_tips.pk_oaci, 0) AS oaci
   FROM ((public.users
     JOIN public.parametrica_descripcions ON ((users.nivel = parametrica_descripcions.rol_nivel)))
     LEFT JOIN public.user_tips ON ((users.id = user_tips.pk_id_user)));
 !   DROP VIEW public.vista_usuarios;
       public          naabol    false    252    252    246    246    251    251    251    252    252    252    252    252    252    252    252    252            �          0    16419    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          naabol    false    243   ��       �          0    16426 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          naabol    false    244   ��       �          0    16430    pais 
   TABLE DATA           [   COPY public.pais (id, geo_code, pais, activo, fk_user, created_at, updated_at) FROM stdin;
    public          naabol    false    245   ��       �          0    16436    parametrica_descripcions 
   TABLE DATA           �   COPY public.parametrica_descripcions (pk_id_parametrica_descripcion, descripcion, sigla, nivel, activo, fk_user, created_at, updated_at, fk_id_parametrica, oaci, grupo, rol_nivel) FROM stdin;
    public          naabol    false    246   ��       �          0    16446    parametricas 
   TABLE DATA           o   COPY public.parametricas (pk_id_parametrica, descripcion, activo, fk_user, created_at, updated_at) FROM stdin;
    public          naabol    false    247   ː       �          0    16453    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          naabol    false    248   $�       �          0    16458    registro_autorizacion 
   TABLE DATA           ;  COPY public.registro_autorizacion (id, razon_social, fecha_autorizacion, numero_autorizacion, cliente, cliente2, tipo_aeronave, nacionalidad, peso, piloto, ruta, ultimo_aeropuerto, aeropuerto_destino, objeto_vuelo, tiempo_validez_inicio, tiempo_validez_fin, dias_adelanto, observaciones, activo, fk_user, created_at, updated_at, matricula, pais, medida_peso, aeropuerto_alterno, objeto_vuelo_aux, tipo_autorizacion, aeropuerto_entrada, aeropuerto_entrada_alterno, aeropuerto_salida, aeropuerto_salida_alterno, modelo, tipo_array, matricula_array, peso_array) FROM stdin;
    public          naabol    false    249   A�       �          0    16464    user_nivels 
   TABLE DATA           �   COPY public.user_nivels (pk_id_user_nivel, fkp_rol, fkp_regional, fk_id_area, logueado, fk_user, activo, created_at, updated_at, fk_id_user) FROM stdin;
    public          naabol    false    250   [�       �          0    16473 	   user_tips 
   TABLE DATA           w   COPY public.user_tips (id, pk_id_user, pk_id_tipo_ficha, pk_oaci, activo, fk_user, created_at, updated_at) FROM stdin;
    public          naabol    false    251   З       �          0    16477    users 
   TABLE DATA           �   COPY public.users (id, name, email, nivel, activo, fk_user, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          naabol    false    252   ��       �           0    0    aerolineas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.aerolineas_id_seq', 29, true);
          public          naabol    false    214            �           0    0    aeronaves_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.aeronaves_id_seq', 14485, true);
          public          naabol    false    215            �           0    0    amhs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.amhs_id_seq', 1, false);
          public          naabol    false    216            �           0    0    arrivos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.arrivos_id_seq', 1, false);
          public          naabol    false    217            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          naabol    false    218            �           0    0    ficha_estados_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ficha_estados_id_seq', 1, false);
          public          naabol    false    219            �           0    0    ficha_neo_plan_vuelo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ficha_neo_plan_vuelo_id_seq', 1, false);
          public          naabol    false    220            �           0    0    fpls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.fpls_id_seq', 1, false);
          public          naabol    false    221            �           0    0    metars_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.metars_id_seq', 1, false);
          public          naabol    false    222            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 1, false);
          public          naabol    false    223            �           0    0    notams_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.notams_id_seq', 1, false);
          public          naabol    false    224            �           0    0    pais_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pais_id_seq', 1, false);
          public          naabol    false    225            �           0    0    paises_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.paises_id_seq', 1, false);
          public          naabol    false    226            �           0    0 :   parametrica_descripcions_pk_id_parametrica_descripcion_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.parametrica_descripcions_pk_id_parametrica_descripcion_seq', 1, false);
          public          naabol    false    227            �           0    0 "   parametricas_pk_id_parametrica_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.parametricas_pk_id_parametrica_seq', 1, false);
          public          naabol    false    228            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          naabol    false    229            �           0    0    proceso_metars_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.proceso_metars_id_seq', 1, false);
          public          naabol    false    230            �           0    0    proceso_nuevo_vuelo_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.proceso_nuevo_vuelo_id_seq', 1, false);
          public          naabol    false    231            �           0    0 $   proceso_rutas_predeterminadas_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.proceso_rutas_predeterminadas_id_seq', 1, false);
          public          naabol    false    232            �           0    0    proceso_vuelo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.proceso_vuelo_id_seq', 18803, false);
          public          naabol    false    233            �           0    0 "   registro_adicion_sobrevuelo_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.registro_adicion_sobrevuelo_id_seq', 1, false);
          public          naabol    false    234            �           0    0    registro_autorizacion_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registro_autorizacion_id_seq', 1, true);
          public          naabol    false    235            �           0    0    registro_cliente_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.registro_cliente_id_seq', 1, false);
          public          naabol    false    236            �           0    0    registro_matricula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.registro_matricula_id_seq', 1, false);
          public          naabol    false    237            �           0    0    rutas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rutas_id_seq', 1, false);
          public          naabol    false    238            �           0    0    rutas_puntos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.rutas_puntos_id_seq', 1, false);
          public          naabol    false    239            �           0    0     user_nivels_pk_id_user_nivel_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.user_nivels_pk_id_user_nivel_seq', 1, false);
          public          naabol    false    240            �           0    0    user_tips_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_tips_id_seq', 1, false);
          public          naabol    false    241            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          naabol    false    242            �      x������ � �      �   -  x�e��n� ���a�û4� N[[����+�]V����A������=�-)O�;��f�@�sܔs�ƎhɑGo�hM�:{d����i�?͐���P"�b�q�����ܹHI^#X3d5�ǢmN�99�V�Ւd�O�O��W��t����=��\w a:8D��kr�𸆰ʖ�a�iH�����0����&ۓ�lq���F�;e�.5�B<�V��Y�������~W��Sd���� 9?-�n�Z��4�0�=�>���[�]��!��>��f�ք!m��TU�Yg�j      �   �
  x�uYK��8]ç�f�H�� 	�(� �T�ej���ut�yI��L�v�| �Ld�wB�;Q��V�x���Ŀ�,��i$@#m�z|���#W�Q�*��9	��@�_囐�#�s���Z.@�����fu�d1��ujY�^}����Jyچ
2��mE��d/k-�nud�D{�e�N������-�a����Q������=C)�y
�K��
���q$�����37_U��ǜ�����]m�xB���fc���ZBlgd{����D��eX-[Ǡ���Xj�8�ZY��'{�Q�C"�0���hyZ�K
lӛ71�s7۔�v�3z���=!C�3��7չ�nb���Ő$���+�`$�4��F��e�f�O��ɂ�5f:�G2��v݀�3͖�,�2�5~Z��ɶ�9�o������m)�qE#kWLʷkm+���ck]��ވK?��v�z�ۭh�@���b�v��� ?�\#{ gQx5���Y48B�ɳ�g}{��?6�\���Q4���)zհ�'��Fj�������i��Ͻ= v��ov\���7�̊;��678�|n\ǖ�*�����n ʵY��5^�r���b�{��/� �í���$.ί{����ir#"�� ����4z��A�\���=����4&��&yy������Xts�m|>D��u��٫��%���}�bf��j�� �����f �#[�I�];�Lٰ�5��P���\(�H.*�j3�PD���H%=�`�$?��h��,��B���Q��ǐ�HA)t�a5{�K�M
�"b��ڍ9��wOo;+���t8��N D����m�7qF�f)-sQ��&l^Ƕc��ah,w��Fty	���u:nE7,@v4�;�),��8���-}��y�8�{�M���q<���
�0;E�i��D�ƜD�q�;Oq�i�7 !�o�T08��ީ��@�Ҥqm��JÂ�Ǡ)>GH7��N`*�l����}��u����tIyԼ����2?�������:��@���}�S�p�L+�|Ci��6����^�x��Ġ�}�Wҷ�� ��YiZ�u#z����m��|ۊ��-XW\�0p'��m��xf/��BӜ:3[�v���
x�T��<3�o' �u�/��5��^T/֥��䋀����2�R��LCC�Ý
4�����}���`�P����]y�1%��;� 4m&�J�狄�D#�_ʕ"�BZ�n(�KG㴇3�������FneX%.W��K����@�<�z��cy��~F� $�%����t�X>� �/��|	���e�I�PM�Q1�_BC���CL9��&}�����BgEЁ�؈ᒋ��|���C����dhX@,!��9��܋�Pbf���iAZ=�
5=��(
���}��g�[E���UBO��~U�>�Pԃ�� ��_Y$�\%�5:�*P�(�.K�7��B/;���C�X��\���CZ�L�b��z����@a��.fm
2�|������� �Ģbp��S��1̅I��2�!��9�$Ȇ��hJ?WH�7��C�1��7���J�RXC�/�h�A(������+,vٲ¥���#j�Ȓ]	���	�DJc`%��Ĩ�;�N���$��� �l5-S�A5����ggXڀj�|�$����GCOjB�%�빆b���]n�%�@9;:5.+0K�f��[@���ʵ|�� ZyD�C��k��\͕�<C+��.H��&�1@��ΐ������4�Ί�z$/��~ɯ=��2z�3u[��R��HV�Vf 
��>O��#jpϷ-=C��8 ˹��+��G*F�䶁�鴏?��e=R!2B�EGE;E��89�9��%�kJM��=*
�@4Vg�2��E�O��@D{G�R~�SBG{�f��P	�B���H=��b�������1�ف.3��j��B!��тY	�(��#/-K���,],ݙE�"��`=��1K����k��3�&�\B<�Uu���U4�@w*_h�wm%tx�V2��;���L�ݣ����8i��Q躔BK���Ah�@�)�r�WF1
*Ht��'nRs���R�8>pWD��=��hV�T��]�8���Pt1��Cu�憐���㴂N�!hJ�e.[=��:�;�Z��^3�Cgw���nм\�B�]������\���($y�/Ҽ�l�-N���]�T�e׬�!�O�UkE��Wb!e�f���7��D��t�������;m�Kq��8����"R��6{�j�_j��x[��[ *��~!l֯y�����amM	�5~�"�k�?���_ˣ`�/�y=8<o둰��1w/T� ^E=8_`�w\T�>D���E�z~AM:Tَo�F�&YR݌>��&�T���/�nk%A����A1�f�撴B}/00�\����("9����wT	1M��=ؾP�F���fEE�H��ɢBA�(�B�eɶBE�n�	h�|E�DU&i��|%'1-�N'���bZn\YȭP$L�Ш")[�ɂ�I���SW?��4}?"���D�)����Ko�K��ۼ
����]�(4�`x�Ɲ�ֈ�MT-]�ͺN��P3��B�_�U�nDnz�e�gEW��]�ͫB�Г\A��B���=����~�����R      �   �  x����r�  ���)��П�+��ddPJ'�\:=��[����䦭��xl!F��ր�~*K}� o�ş�tF�eQ����J�}�=Vn�0�W�Y~�t�^ G�5��g�(Q [��a^�����顟��;�gi�U�T��sT<C�$ �,>
�!0�^��V�W�!pq����<0G@�51|[���0݊���)	5[,��G[CUښ�H�\���e�\�s��Hs����4r��)|9{C�6L��W9�X��ZR/|� <8�<�٧H]�X�q	��;�}aD
0�2����=!P���e~�݄�2�q���3��1�09SFP��'
;�7�r!��^��kO��3JÀ�o@�ʤ~~�����ܖ��
'K������q7��,��s�:�&*�rG#��^��EW�)DwC����o�����b�      �   I   x�3�ru���s��4�? �2���qF1����w�t�pD6�t�w��wt�D4�uª<F��� �|F      �      x������ � �      �   
  x��W�n�6]�_Ade�H���$z"G=Ə:��)�EZ$��.�誻����Ҽ�8i�v0^]���q�!͹#�W�lٵٰ�kGx"���K�;�Fn�n\r���CK��:�h~�yk�s��`�n�5Sèr�#�}�Y�7"�E�Ɋx�u�W�Iݳ멮4+e[��L�C?�� e�׬�0�KVOE%[k��|��$�i��,����m?+�"_1ys�Mu�L3��0Vʁ�29k�ԘyA�C����*^Jr�j0��
&�
O`�	��"��5�Qf�{��v(��ou����Uu/�9raI��N��'E�\]PX-<�[�"���%^��%�(Z$���B�7��B7��0�Z�k��Da*7�U7ղ�t�5�b��G�S�U�t�X������R�QeU`�VՎj`w��c�����D��E�ʭbp@���L=�X2ݩ�l�lޱQSjj��b��4f�����r� O����j�P��^]���=DW�V2�:�"wUm�,,c�����3|	��W���\N�nu���d���(=���g��E��Q�.��9�66�Z���0E���l�~b��Pr���e�S����������=�! ���+�a-�J;9�
n�8�/}[j�DI"\Rᨛ��(g��E�m*�$�a!"ہ`�(��5R1�s8
e��\�,�\ډ���zjX����2e"���H�f����I$o�Kc~+V�
>b��$��,y��>�2�D����ߍ���{�����>����N��{�t(m��3<�S��-�:w� >��e?�����\���%��TaZ�i��(��ޥg�Jl����,�Y`�ͺi����������
%5�U�4u�-��bˡ��h�9���,gI�9|X���h�E D���`o�V|��蛶6L2�� ���Hs˚�+��p�'D�:��vR52؎�2�f(x���n�������Y���o�g�&̂�I�ˊ{"Z13�v�;&|����c��:�����N��ǿ�N�R7C3�Gpbi��>�}��͏Z�|�������b�d��
��"�t����+>�>����oL_?!�9b����wp~��r��m�vpGq�|8�_�:&h��w�c(��N<��|�y����mQ��U~��`�͎gCI�^ζ�K_��d�r?:"���O\�5�����s�4Ԏ���a��4݉��贵��,�3�i]�����4a�y�h��z�(̣}��Jv�A���?����*sT-MCY ��FJ�u*��"DF ﬆ���A���ƀ�8T_�&�%N�Vq�V���ŌWA���X΄YA�O�6�Q{zo��e@�~2���Pl@P�r>�x�b��E..8{��؞�뛃���'�ݡ������f@������ã��7a:���^LN0���(e8F�����I���Z\�H�6c�E�6ݨ��U��9�RN�}���=< k���]Ҕ�E���w����,��s�`'�b���������:t;����5��ݧa�m�0d�0��Kهt��>;;��{�+      �   e   x�m���0��,P;@�C0���xUU�:��(#-������)|0.�V<�k�U�Ui��DY��E�"VF�>e'�r|�&e�n<&�E��9��g���$�      �   �  x����m�8E�V���-�L�u,I�ĖE;@�|ƶD��zԎ�j���q��w���)��[|y.U�g)gi�#W��_!�%�)Y1�Yϙ�(�Μ,�HG�Gg�C�Go^"�!��ߋ'����Q����d0ăT�����M�;�/jgjgC,G��4���,�X��޼�MÜ�v���m8�!���e6�)ghCGq�L��gܞSR8�p��3l�0d�Ӡ�����I�b�"*��vq�aH�(���A3xvj�~�����Jo�^��Q�̸��K�H�S�R=jr����r1�v��{e)ϋ��\-��M/Zi��^�����We�2�=.�n1d:jw=���9.�������IGח����9V��,ǣ����݄��X�ơ�	�9�+6-��3JS8-�7e��Ӳͥ�-���X��Z�#]��-�^_Z����׊�q�W��ӲU��t�����Ӳͥ`z��,��]������5�.��gos����}�n�qȶ�?%-9t1p���{�d1p�v�=�:������a��&~��V�t������q�<��a}?}��?����w-�L�־b�`�l1�
O�wI��o�����x�����ګ���1,���޸�ga�`����X�}XS6�I\���W���0p��ώ2p����5�j|���ǝz���.����ud�K�����(o�6���5���k�0p���{�j|�Ϙ�b�'�F��O8}��f<��5%}B�žO�2H�zK�$B�űt��A(̚�������0pQȾ�����D��b�U8(T_�{�*���&����s��fX�خd_$��E��g�PN���c�e� z�s-*�4|��X�>�� �4C�.,���e��/o�ܒ�;
����q�ĭ�(�4}馾�ͣ2Hק����Y��Ӭ�a�F0+��}o�֫�A��+a{Ta��??u<q�9� �?F_4ڣ2H���/"~�g�0H���sp>��c��|}a-��c��m?���,�=�����|2h ̝�i�.2�� q��9Z)�&={�A3 ћ�͉2h�Y?����7lO+�s�j����?)�&��f
�� ��f��i�A��R����V$	(�ڃK�J�R�J�7���A���x3��m:���o�g}$(�o��ćA��b��=Ǽ'�EN������f���*�$�⛴�!e�H�\���e�L�<k([f|~,}$(w�L��(����f�n1H,P	��+j[a�\�Bo�#�?4O��#�~Z�e>/I�g��Y���A����m���\�T��L�?���TI*�7�ϧ�A��J�=��L9�zzF�$��f�n1H2�<���b�EL�������b�d�yh/o����S�� �@5�f��ʍA�����ҟ&�hZv�7I���,�b�d�:kh&��r�� �@��&�3�� �@� �n�2���n�4��m3��ʍA���y%ˬ�)�$ͳn�l��yc �i�䷑�����$v���1H2�<��Jߡ|qP�Z�$�oۼ���@��֐m����@�q��q���@�#��P�)��y��-�k����3��T,���=�}��ߐ�B�N��4Ems\#�0h����=,&E9Ս<�bЎ9FM�~v�0H"�.�_2¯Y�c���|���}��� �S��      �   �   x�m�Mo�0 ��s��Z�n|�ր# _b��� �Q�D�_����p}�7y0�N��ǥ6��w�V/_z�q��(`! & ��@&7#����P)���9xDS�}]g�:��3�q��6:�cP\F����D�%җ�y��,�[�5� �&a�rj����⧛xىy����cj'|�e��m3�,�����'%_}�_���^�ܛ�e��aam�I;(I�VLW�     