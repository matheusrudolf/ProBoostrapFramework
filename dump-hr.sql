PGDMP     $                    w            postgres    11.4    11.2 ,    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            6           1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
             postgres    false            7           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2870                        2615    16398    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
             postgres    false            �            1259    16399 	   countries    TABLE     �   CREATE TABLE hr.countries (
    country_id character varying(2) NOT NULL,
    country_name character varying(40),
    region_id bigint
);
    DROP TABLE hr.countries;
       hr         postgres    false    8            �            1259    16406    departments    TABLE     �   CREATE TABLE hr.departments (
    department_id integer NOT NULL,
    department_name character varying(30),
    manager_id bigint,
    location_id bigint
);
    DROP TABLE hr.departments;
       hr         postgres    false    8            �            1259    16404    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE hr.departments_department_id_seq;
       hr       postgres    false    8    200            8           0    0    departments_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE hr.departments_department_id_seq OWNED BY hr.departments.department_id;
            hr       postgres    false    199            �            1259    16412 	   employees    TABLE     u  CREATE TABLE hr.employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25),
    email character varying(25),
    phone_number character varying(20),
    hire_date date,
    job_id character varying(10),
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id bigint,
    department_id bigint
);
    DROP TABLE hr.employees;
       hr         postgres    false    8            �            1259    16410    employees_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.employees_employee_id_seq;
       hr       postgres    false    8    202            9           0    0    employees_employee_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.employees_employee_id_seq OWNED BY hr.employees.employee_id;
            hr       postgres    false    201            �            1259    16420    job_history    TABLE     �   CREATE TABLE hr.job_history (
    job_history integer NOT NULL,
    employee_id bigint,
    start_date date,
    end_date date,
    job_id character varying(10),
    department_id bigint
);
    DROP TABLE hr.job_history;
       hr         postgres    false    8            �            1259    16418    job_history_job_history_seq    SEQUENCE     �   CREATE SEQUENCE hr.job_history_job_history_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE hr.job_history_job_history_seq;
       hr       postgres    false    8    204            :           0    0    job_history_job_history_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE hr.job_history_job_history_seq OWNED BY hr.job_history.job_history;
            hr       postgres    false    203            �            1259    16426    jobs    TABLE     �   CREATE TABLE hr.jobs (
    job_id character varying(10),
    job_title character varying(35),
    min_salary numeric(8,2),
    max_salary numeric(8,2)
);
    DROP TABLE hr.jobs;
       hr         postgres    false    8            �            1259    16431 	   locations    TABLE        CREATE TABLE hr.locations (
    location_id integer NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30),
    state_province character varying(25),
    country_id character varying(2)
);
    DROP TABLE hr.locations;
       hr         postgres    false    8            �            1259    16429    locations_location_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.locations_location_id_seq;
       hr       postgres    false    207    8            ;           0    0    locations_location_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.locations_location_id_seq OWNED BY hr.locations.location_id;
            hr       postgres    false    206            �            1259    16437    regions    TABLE     c   CREATE TABLE hr.regions (
    region_id integer NOT NULL,
    region_name character varying(25)
);
    DROP TABLE hr.regions;
       hr         postgres    false    8            �            1259    16435    regions_region_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.regions_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.regions_region_id_seq;
       hr       postgres    false    8    209            <           0    0    regions_region_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.regions_region_id_seq OWNED BY hr.regions.region_id;
            hr       postgres    false    208            �
           2604    16409    departments department_id    DEFAULT     ~   ALTER TABLE ONLY hr.departments ALTER COLUMN department_id SET DEFAULT nextval('hr.departments_department_id_seq'::regclass);
 D   ALTER TABLE hr.departments ALTER COLUMN department_id DROP DEFAULT;
       hr       postgres    false    200    199    200            �
           2604    16415    employees employee_id    DEFAULT     v   ALTER TABLE ONLY hr.employees ALTER COLUMN employee_id SET DEFAULT nextval('hr.employees_employee_id_seq'::regclass);
 @   ALTER TABLE hr.employees ALTER COLUMN employee_id DROP DEFAULT;
       hr       postgres    false    201    202    202            �
           2604    16423    job_history job_history    DEFAULT     z   ALTER TABLE ONLY hr.job_history ALTER COLUMN job_history SET DEFAULT nextval('hr.job_history_job_history_seq'::regclass);
 B   ALTER TABLE hr.job_history ALTER COLUMN job_history DROP DEFAULT;
       hr       postgres    false    204    203    204            �
           2604    16434    locations location_id    DEFAULT     v   ALTER TABLE ONLY hr.locations ALTER COLUMN location_id SET DEFAULT nextval('hr.locations_location_id_seq'::regclass);
 @   ALTER TABLE hr.locations ALTER COLUMN location_id DROP DEFAULT;
       hr       postgres    false    206    207    207            �
           2604    16440    regions region_id    DEFAULT     n   ALTER TABLE ONLY hr.regions ALTER COLUMN region_id SET DEFAULT nextval('hr.regions_region_id_seq'::regclass);
 <   ALTER TABLE hr.regions ALTER COLUMN region_id DROP DEFAULT;
       hr       postgres    false    208    209    209            %          0    16399 	   countries 
   TABLE DATA               D   COPY hr.countries (country_id, country_name, region_id) FROM stdin;
    hr       postgres    false    198            '          0    16406    departments 
   TABLE DATA               Z   COPY hr.departments (department_id, department_name, manager_id, location_id) FROM stdin;
    hr       postgres    false    200            )          0    16412 	   employees 
   TABLE DATA               �   COPY hr.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) FROM stdin;
    hr       postgres    false    202            +          0    16420    job_history 
   TABLE DATA               h   COPY hr.job_history (job_history, employee_id, start_date, end_date, job_id, department_id) FROM stdin;
    hr       postgres    false    204            ,          0    16426    jobs 
   TABLE DATA               E   COPY hr.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
    hr       postgres    false    205            .          0    16431 	   locations 
   TABLE DATA               k   COPY hr.locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
    hr       postgres    false    207            0          0    16437    regions 
   TABLE DATA               5   COPY hr.regions (region_id, region_name) FROM stdin;
    hr       postgres    false    209            =           0    0    departments_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('hr.departments_department_id_seq', 27, true);
            hr       postgres    false    199            >           0    0    employees_employee_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hr.employees_employee_id_seq', 107, true);
            hr       postgres    false    201            ?           0    0    job_history_job_history_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('hr.job_history_job_history_seq', 10, true);
            hr       postgres    false    203            @           0    0    locations_location_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('hr.locations_location_id_seq', 23, true);
            hr       postgres    false    206            A           0    0    regions_region_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hr.regions_region_id_seq', 4, true);
            hr       postgres    false    208            �
           2606    16403    countries countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY hr.countries DROP CONSTRAINT countries_pkey;
       hr         postgres    false    198            �
           2606    16417    employees employees_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 >   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_pkey;
       hr         postgres    false    202            �
           2606    16425    job_history job_history_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT job_history_pkey PRIMARY KEY (job_history);
 B   ALTER TABLE ONLY hr.job_history DROP CONSTRAINT job_history_pkey;
       hr         postgres    false    204            �
           2606    16442    regions regions_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY hr.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);
 :   ALTER TABLE ONLY hr.regions DROP CONSTRAINT regions_pkey;
       hr         postgres    false    209            %   	  x�5�Qn�@D�gO�	*5��J���T�?\��Dˢ49}wS�����ޑYR7<��t!���h��<�%�K0��F����CĤixp��,59SV"Ӄ�6��Rٞ�ʩ���؊:E-�H�ٰߕ���]u�'e_aoH��x� e3���-M���I�d�]�èBd�.�O��*흍"=8OyD����W(>P���gם���W�~JvD�b�x�c�z"��G��<�)S�rt��!�
�Y[����D�F��+>���qBd�      '   U  x�]�As�0��˯�tH ţu��C�#�İ֌1aB���F�=����欌�^Y<ˀM�,��%�	�2?��`��ɣ�"e�xXX��0�;K2v4�/H*�>����9-)�M�s�,:��r���i}���qq�д�%�8:��+���iC��e�02��g�R�`��e�9l�.��V=�aa]k� L��:
	�;�ӹi҅�F�Q��	�G�ti����>�W4xP��M�TB��b�A��������g�4�l��[t}]eTlZ��nsr��b�̣i��m�;���{Ag�h|�h}�JؠJ�����7=��Qiz@��$I~���      )   a  x�}��n���?O�b�@"�61�,��i���Մs�@�q������ΩZ����i��?�
i���K���� Z���w����e��(��bݪ6��?��KA3E�S�;�߮r�A��%�m�t<��m��}��(�P���j*����#H�� I�0���/���3��0�-�V��1�S����y���N���C�+0]�ΐ�����dh]���[�i`)7&,��S^]�XxI�f2FXfߢqhY��d�NV�W������;�Y� �s�u���p>�lx�S{���7{��e������́U�1taU�e��0N�(�>���O�@�#J��r!���;�kL�y��:�h�u4#��PJ����	��O� S)�7���*���趼��={�ld�2�"[.�C�Mc�86ձ���}���hi��19�hs�����ҧ��5� ],I��%���@۞u|�9�k��R�f�fwHvLz��"1�:EAF:s��8þ���}����©j�@�;�X�%$��-~�U���G�&p6��6-n�����Ӓ�eI5�=V���2I뺍y�:DZ�^�]Qh�lH�9�����VL&���M�1�4wFr -^�	��G�ϐf�"`��2�H�S�3C�����_�]�
�~��Xg��S�s�����r,FXV�7�u~��2w^4����_�x挧7�1��yq>����,SM�����:��Ҁ=�7��L+v��W=E�(�)��S�E�����-��{���߲�}���g�K����e�3�����;`u:Qݤq��,cx��H��˄m���/�|�u<:��P���գLg��`s9��;&�&b߼���Gs��t�.�JkA�n1r���:+/v�v��Ԍ�7��5 5{t`��0�B���6!�Vɷ��&Ҁ5$�1C��t�����C�c�6�F�ѲѲ�g�������g�@����e����j��2]B���^}s`�kQ�+|�P֤�@���%�\�M���6��߰a�$��=>L��R.��C���DO�6q��рq����è3��/f��A�±v�;��ٚDp�*M�L̫'j�T/y�V�`��t�9z�Y�w�<w�PB�:�a����`5C#⋄j	6���?�������~fL2��
��ER�<��<��[Ͽ�HB�z�K�.
Qv�ԓ�]K$�O�iS�0!Ro��0M��J����PZ)��lR/�j?�?9˞1HΜ�N*}�A腣ic�����I�{J����Y�6�UXn�"Ꞷd��1G��nPu��E-W��$�n_+�-u��ʀ�X>�|��х��PK(�65��t4Ϛ�p�����_p��X�frܔ���~�e�qK.�3��$�4E�+���{�AZ��څ�
Y/�*�~iBU��A� ��F���MI�ݳ$�pZL�����Jz���aP����B��T�����R�<����v��E�鸚r��'�9�RK����S�%�-v�`-���-�f|�zk*��h�}?U�k���0ζ޷�OUT���6}:�2�@�j���Dmd���ONU�H	������C~%&�n{[������7��9Ru����iP�{�O�����O��w�����)W`�6uqn*lS5��8gpә@]�n=)�g��QdGvP�v��ir)�ѵ�#ղ:,�n���+X�W��%�qvx`�0�>��*uɅ��gOUG�m��S�-c#n#Μ��'�%x�ֺxz��r��g���ۄ��D#W�-]��j�ݓ�c�vK�q��t��1���?,��3�L�V4G�]���-gy_��h�$o�*��9��Z�_�MhI<���<�G�9�,�S�c�|�&��ڮ'��H�dm4��	��P��%�|R?�4kR�$��1��*����a���woմ���'�y�Ցi��+�$q�@i���e脩̶��ckS��)D��
���L�I�b9WP8�/8_k`���OF�)͒ir��+48���#�ilB�e�AW��v�L���!�����'m[�J�M�1��4��l{k�]��TUo�/�8�M����d�~�/���"U���	w_���>��f�09��u���c�2�ᶂ?W�.��6&y�u����#l�����a:A��T��N��4D��do/o�2����<�_X�����5�(\=��$��K(���$�Ӟ�
���Ϙ0��i0��?dY͑֘4C�:�$gZ"��ĮE�F��>c��8�3�1k':�@�Lڻq��6��3�s���:*�1؎q��{C�G��56�w/l����'j�!�ҽq��bސԥ�Ynb?J�9T�8�>U�x��b����Ο��?I���-�äd�/O"n�9Φ�S�/���c�	��귵�_[2Z�N͹9r1ߋ_4�i�L��ub����m-΀uQ��Ur�rv���(�IJ�Z�]��p|�^>C��d�w������.RF�G�|�oON{y��l��b�F#��q�������;k���Z��ik���a=��1��4���c��*�)��El�I0����F�2�a-�Җ�����?�2g��Qd ��W�s܆�ѺUA��* �׳$�9�jdY3���j�X��gkы{��,[�9����>����E��E���"Y[�.��ZdSl�}F�rfi������.n��/�!!桚G���K�,p���I����j���G��Ӓ㊕�KDk�0E��O�,7��)�^������yU�,]�5�Vc��z��#?���P���T֪:�k�~#�����Ic����4�7	�iʜ�.e�rQ�����˪,)��xG�J8]�޺f7ښW������Y�sdd���圿�R�z<r��G\m=�3�a�7�����4C��+�}��o�(�v���,�h��&�R��mw�~��H�����3��"���Y�%��@�y64Em	$��4-�/T�t�~H�tx�m�#��Ե��%��"������)�3��y�7sɜ}2��&��~�����u���k�Nqǖ�?�
�ۃ.]y�����o�=Ku�O�ዩ.9����nnn�ѦG�      +   �   x�u��j�0E��ѐ�؎MVJ�Җ${���b���26��"�^Y@XA���Hp��3� ��=���& �d�B*�a�uju�DCG���e$$����tl�z�b%�.3���-��U0;�d
�頂�����\!2&ս�7���6�G�=vW�����nPG��~٦c\��F�rP��6כS��ӮR'_�����~�!�7�5L      ,   ^  x�}�ݎ�0���S�T6z��o\�)�	�b��PL��;�����93x�:KQ\�������>������� |*��R���D�{U�T8Iv]�>H�V�e�U/(��$x�L�3Wh<0X���(��7��ee-[���&�|ԺYB��gC@�!�r����Mp�JX���2�C��k0:#��AAL�/w�����[OR����K���6h�=��g8ʹ��Ah�0���L�U�]�~�'? cg0�d�B�f�t�E�n�+�vpK��RyV�(�����"^�]�L]��V&�I�l|����[̒���.�V��{�]1*�w���J�e����z�{��%;��      .   	  x�MSMs�8=C��ݙ�CR�ec7m�a'c9I���P��Bf(*���Bvwg/��z��{�Ӡ�-��.CG�8�8����&��\��63`se5.�����>he�)<�w5��`�.�j��=��~ =�~۰?���#��:���>���
o��iR�fs��WCߺ3�c�)^��3�C��G�4`f��ڎ�[~��l6�5^��х��{k�Z���p����H�v}@Ĺ_!zGcu)ժ����JP�+�O�"�?�zk>�5Ǟ�c�|,�ⲥH���\[SJ���K��hz*>�R�<��êxDs[�I1���'ȴ�����B32�^=��xj]�V2|��{�k��I1�o)��ݎ=h�
=����c�u�δ�`.k��+E��_���*�kX��g:FM}�"����R29��)D7:��4T�Ƌ!�7g����.2=
s\v��>9\��Z(�Jn�J��i��/�.`n���qT,���7"Q�n2=b�F�{\J��p�2޽� ţڱ��)���E�c�o�c�l��LM6�#n5��L,)��9���	��]9�N�B�n�S+b��G,�x6�A�$-,�MfH��2���d��I�<ׄ:�)�sUN��=&	]���b�%���a_/Y����"�S��|a�ot>�_3���1�V���Vn$Å�>zX\�@�����]�݈������<���M����L��%����gnZk5hms+~wu��KG�䤣K?sÑ�������e�?�O�      0   ?   x�3�t--�/H�2�t�M-�LN,�2�t,�L�2���LI�IUpM,.QH�KQpL)������ �~�      ,    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            6           1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
             postgres    false            7           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2870                        2615    16398    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
             postgres    false            �            1259    16399 	   countries    TABLE     �   CREATE TABLE hr.countries (
    country_id character varying(2) NOT NULL,
    country_name character varying(40),
    region_id bigint
);
    DROP TABLE hr.countries;
       hr         postgres    false    8            �            1259    16406    departments    TABLE     �   CREATE TABLE hr.departments (
    department_id integer NOT NULL,
    department_name character varying(30),
    manager_id bigint,
    location_id bigint
);
    DROP TABLE hr.departments;
       hr         postgres    false    8            �            1259    16404    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE hr.departments_department_id_seq;
       hr       postgres    false    8    200            8           0    0    departments_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE hr.departments_department_id_seq OWNED BY hr.departments.department_id;
            hr       postgres    false    199            �            1259    16412 	   employees    TABLE     u  CREATE TABLE hr.employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25),
    email character varying(25),
    phone_number character varying(20),
    hire_date date,
    job_id character varying(10),
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id bigint,
    department_id bigint
);
    DROP TABLE hr.employees;
       hr         postgres    false    8            �            1259    16410    employees_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.employees_employee_id_seq;
       hr       postgres    false    8    202            9           0    0    employees_employee_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.employees_employee_id_seq OWNED BY hr.employees.employee_id;
            hr       postgres    false    201            �            1259    16420    job_history    TABLE     �   CREATE TABLE hr.job_history (
    job_history integer NOT NULL,
    employee_id bigint,
    start_date date,
    end_date date,
    job_id character varying(10),
    department_id bigint
);
    DROP TABLE hr.job_history;
       hr         postgres    false    8            �            1259    16418    job_history_job_history_seq    SEQUENCE     �   CREATE SEQUENCE hr.job_history_job_history_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE hr.job_history_job_history_seq;
       hr       postgres    false    8    204            :           0    0    job_history_job_history_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE hr.job_history_job_history_seq OWNED BY hr.job_history.job_history;
            hr       postgres    false    203            �            1259    16426    jobs    TABLE     �   CREATE TABLE hr.jobs (
    job_id character varying(10),
    job_title character varying(35),
    min_salary numeric(8,2),
    max_salary numeric(8,2)
);
    DROP TABLE hr.jobs;
       hr         postgres    false    8            �            1259    16431 	   locations    TABLE        CREATE TABLE hr.locations (
    location_id integer NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30),
    state_province character varying(25),
    country_id character varying(2)
);
    DROP TABLE hr.locations;
       hr         postgres    false    8            �            1259    16429    locations_location_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.locations_location_id_seq;
       hr       postgres    false    207    8            ;           0    0    locations_location_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.locations_location_id_seq OWNED BY hr.locations.location_id;
            hr       postgres    false    206            �            1259    16437    regions    TABLE     c   CREATE TABLE hr.regions (
    region_id integer NOT NULL,
    region_name character varying(25)
);
    DROP TABLE hr.regions;
       hr         postgres    false    8            �            1259    16435    regions_region_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.regions_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.regions_region_id_seq;
       hr       postgres    false    8    209            <           0    0    regions_region_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.regions_region_id_seq OWNED BY hr.regions.region_id;
            hr       postgres    false    208            �
           2604    16409    departments department_id    DEFAULT     ~   ALTER TABLE ONLY hr.departments ALTER COLUMN department_id SET DEFAULT nextval('hr.departments_department_id_seq'::regclass);
 D   ALTER TABLE hr.departments ALTER COLUMN department_id DROP DEFAULT;
       hr       postgres    false    200    199    200            �
           2604    16415    employees employee_id    DEFAULT     v   ALTER TABLE ONLY hr.employees ALTER COLUMN employee_id SET DEFAULT nextval('hr.employees_employee_id_seq'::regclass);
 @   ALTER TABLE hr.employees ALTER COLUMN employee_id DROP DEFAULT;
       hr       postgres    false    201    202    202            �
           2604    16423    job_history job_history    DEFAULT     z   ALTER TABLE ONLY hr.job_history ALTER COLUMN job_history SET DEFAULT nextval('hr.job_history_job_history_seq'::regclass);
 B   ALTER TABLE hr.job_history ALTER COLUMN job_history DROP DEFAULT;
       hr       postgres    false    204    203    204            �
           2604    16434    locations location_id    DEFAULT     v   ALTER TABLE ONLY hr.locations ALTER COLUMN location_id SET DEFAULT nextval('hr.locations_location_id_seq'::regclass);
 @   ALTER TABLE hr.locations ALTER COLUMN location_id DROP DEFAULT;
       hr       postgres    false    206    207    207            �
           2604    16440    regions region_id    DEFAULT     n   ALTER TABLE ONLY hr.regions ALTER COLUMN region_id SET DEFAULT nextval('hr.regions_region_id_seq'::regclass);
 <   ALTER TABLE hr.regions ALTER COLUMN region_id DROP DEFAULT;
       hr       postgres    false    208    209    209            %          0    16399 	   countries 
   TABLE DATA               D   COPY hr.countries (country_id, country_name, region_id) FROM stdin;
    hr       postgres    false    198          '          0    16406    departments 
   TABLE DATA               Z   COPY hr.departments (department_id, department_name, manager_id, location_id) FROM stdin;
    hr       postgres    false    200   1        )          0    16412 	   employees 
   TABLE DATA               �   COPY hr.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) FROM stdin;
    hr       postgres    false    202   �       +          0    16420    job_history 
   TABLE DATA               h   COPY hr.job_history (job_history, employee_id, start_date, end_date, job_id, department_id) FROM stdin;
    hr       postgres    false    204          ,          0    16426    jobs 
   TABLE DATA               E   COPY hr.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
    hr       postgres    false    205   �       .          0    16431 	   locations 
   TABLE DATA               k   COPY hr.locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
    hr       postgres    false    207   U        0          0    16437    regions 
   TABLE DATA               5   COPY hr.regions (region_id, region_name) FROM stdin;
    hr       postgres    false    209   n       =           0    0    departments_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('hr.departments_department_id_seq', 27, true);
            hr       postgres    false    199            >           0    0    employees_employee_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hr.employees_employee_id_seq', 107, true);
            hr       postgres    false    201            ?           0    0    job_history_job_history_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('hr.job_history_job_history_seq', 10, true);
            hr       postgres    false    203            @           0    0    locations_location_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('hr.locations_location_id_seq', 23, true);
            hr       postgres    false    206            A           0    0    regions_region_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hr.regions_region_id_seq', 4, true);
            hr       postgres    false    208            �
           2606    16403    countries countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY hr.countries DROP CONSTRAINT countries_pkey;
       hr         postgres    false    198            �
           2606    16417    employees employees_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 >   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_pkey;
       hr         postgres    false    202            �
           2606    16425    job_history job_history_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT job_history_pkey PRIMARY KEY (job_history);
 B   ALTER TABLE ONLY hr.job_history DROP CONSTRAINT job_history_pkey;
       hr         postgres    false    204            �
           2606    16442    regions regions_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY hr.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);
 :   ALTER TABLE ONLY hr.regions DROP CONSTRAINT regions_pkey;
       hr         postgres    false    209           