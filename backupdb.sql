PGDMP     8                     v            login    9.5.10    9.5.10     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    40960    login    DATABASE     w   CREATE DATABASE login WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE login;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6                       0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    13338    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    49152    SAMPLE    TABLE     �   CREATE TABLE "SAMPLE" (
    "ID" bigint,
    "DATE_CREATED" timestamp without time zone,
    "DATE_MODIFIED" timestamp without time zone,
    "NAME" "char"
);
    DROP TABLE public."SAMPLE";
       public         postgres    false    6            �            1259    40961    USER    TABLE     ,  CREATE TABLE "USER" (
    "ID" bigint,
    "ADDRESS" "char",
    "COMPANY_NAME" "char",
    "EMAIL" "char",
    "FIRST_NAME" "char",
    "LAST_LOGIN" "char",
    "LAST_NAME" "char",
    "PASSWORD" "char",
    "PROFILE_PICTURE" "char",
    "ROLE" "char",
    "TOKEN" "char",
    "USER_NAME" "char"
);
    DROP TABLE public."USER";
       public         postgres    false    6                      0    49152    SAMPLE 
   TABLE DATA                     public       postgres    false    182   l
                 0    40961    USER 
   TABLE DATA                     public       postgres    false    181   �
          
   x���             
   x���         