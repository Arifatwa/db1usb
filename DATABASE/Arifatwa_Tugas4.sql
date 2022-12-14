PGDMP     &                    z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    retail    DATABASE     i   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    24617    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    24602 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    24592    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jenis_kelamin character(1),
    no_telp character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    24612    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    24587 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    24617    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    213   ?                 0    24602 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    211   ?                 0    24592    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_telp, alamat) FROM stdin;
    public          postgres    false    210   ?                 0    24612    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    212   ?                 0    24587 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    209   ?       t           2606    24621    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    213            p           2606    24606    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    211            n           2606    24596    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    210            r           2606    24616    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    212            l           2606    24591    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    209            u           2606    24627    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    213    3188    209            v           2606    24642    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3182    209    210            x           2606    24622    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    213    212    3186            w           2606    24637 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3180    209    211               ?   x?]??n?0?g?)?)??͞%?؅iW?-???o_ֲZ ?~w?Hv?^_C
_d??_4?`??8}b?????W?	N?'灪<<	?!?q???>+?ZP#G???	??yu?Fpk???i?tpus?\??9X'??3G?YO!????=$?H?$7??r.)??????G??{??|?	?1Erۖ?
???b??????+ѩH???Ӛ????6Ao6>6B?X????4?{??P?^??R??>f	         ?   x?u???0?7??@?^?>[&?^???????rhG{u??|ͪ7	VI$?MF?#??ʠ4R?J?? ????8d???	???? \??R???dR<"?\_?(d?Bz?x??CF	??o+Ap?-?7?Ok??uC2         ?   x?uѽj?0???)?E֟??)?B?9`]ڭC??E8 ?i?8?\d?@??????????v<???)?<?:#$????B?ժ D?`??V,?U?o2&?p?Ϙg?P?F+????]hh??e4?????'Kɵ)????nF?X?5B?!?<??6d?~?[???ĻM???W"????%\?6f?o??_y;??(??? ?B6Bs???? ?M?ؤb?i?p?n???????mV         ?   x?e??j?0?k}?<A?5????ҨDev?nP?v???D?????9?;?4???~Y??aQRV`J0??L?/?????<3??#???^???gg?7}cFв?ׂWe?(???t?p?N^????;Tq"?W?n??n*=zi"?X??S???q??]3?)??D8L?V5&b<au?Q?4?[??Ŭ?	?S??:5t5v#Rp?ʞh?
?i?Q??P???y@????zP??<????         ?   x?M?1
C1???.)?%?w?ک?.??է%? z$`???~?Uk??x????)a?6??WTo?ƶQ??VmV??ζS????[?Ґ??:????vR?ғ?I=?C??.꒮??gpͿ6]??q?T[?Էv?zRm??T?Fҽ??VJ?g?]     