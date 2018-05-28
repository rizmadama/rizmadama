/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     27/05/2018 22:28:15                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ANGGOTA_RELATIONS_PETUGAS_') then
    alter table ANGGOTA
       delete foreign key FK_ANGGOTA_RELATIONS_PETUGAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANGGOTA_RELATIONS_DENDA') then
    alter table ANGGOTA
       delete foreign key FK_ANGGOTA_RELATIONS_DENDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DENDA_RELATIONS_PETUGAS_') then
    alter table DENDA
       delete foreign key FK_DENDA_RELATIONS_PETUGAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PENGEMBA_RELATIONS_PETUGAS_') then
    alter table PENGEMBALIAN
       delete foreign key FK_PENGEMBA_RELATIONS_PETUGAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PINJAMAN_RELATIONS_PETUGAS_') then
    alter table PINJAMANAN
       delete foreign key FK_PINJAMAN_RELATIONS_PETUGAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_SIMPANAN') then
    alter table RELATIONSHIP_4
       delete foreign key FK_RELATION_RELATIONS_SIMPANAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_ANGGOTA') then
    alter table RELATIONSHIP_4
       delete foreign key FK_RELATION_RELATIONS_ANGGOTA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_ANGGOTA') then
    alter table RELATIONSHIP_5
       delete foreign key FK_RELATION_RELATIONS_ANGGOTA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_PENGEMBA') then
    alter table RELATIONSHIP_5
       delete foreign key FK_RELATION_RELATIONS_PENGEMBA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_ANGGOTA') then
    alter table RELATIONSHIP_6
       delete foreign key FK_RELATION_RELATIONS_ANGGOTA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RELATION_RELATIONS_PINJAMAN') then
    alter table RELATIONSHIP_6
       delete foreign key FK_RELATION_RELATIONS_PINJAMAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SIMPANAN_RELATIONS_PETUGAS_') then
    alter table SIMPANAN
       delete foreign key FK_SIMPANAN_RELATIONS_PETUGAS_
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_11_FK'
     and t.table_name='ANGGOTA'
) then
   drop index ANGGOTA.RELATIONSHIP_11_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_10_FK'
     and t.table_name='ANGGOTA'
) then
   drop index ANGGOTA.RELATIONSHIP_10_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ANGGOTA_PK'
     and t.table_name='ANGGOTA'
) then
   drop index ANGGOTA.ANGGOTA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ANGGOTA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ANGGOTA
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_12_FK'
     and t.table_name='DENDA'
) then
   drop index DENDA.RELATIONSHIP_12_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='DENDA_PK'
     and t.table_name='DENDA'
) then
   drop index DENDA.DENDA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DENDA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DENDA
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_3_FK'
     and t.table_name='PENGEMBALIAN'
) then
   drop index PENGEMBALIAN.RELATIONSHIP_3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PENGEMBALIAN_PK'
     and t.table_name='PENGEMBALIAN'
) then
   drop index PENGEMBALIAN.PENGEMBALIAN_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PENGEMBALIAN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PENGEMBALIAN
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PETUGAS_KOPERASI_PK'
     and t.table_name='PETUGAS_KOPERASI'
) then
   drop index PETUGAS_KOPERASI.PETUGAS_KOPERASI_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PETUGAS_KOPERASI'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PETUGAS_KOPERASI
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_2_FK'
     and t.table_name='PINJAMANAN'
) then
   drop index PINJAMANAN.RELATIONSHIP_2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PINJAMANAN_PK'
     and t.table_name='PINJAMANAN'
) then
   drop index PINJAMANAN.PINJAMANAN_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PINJAMANAN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PINJAMANAN
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_5_FK'
     and t.table_name='RELATIONSHIP_4'
) then
   drop index RELATIONSHIP_4.RELATIONSHIP_5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_4_FK'
     and t.table_name='RELATIONSHIP_4'
) then
   drop index RELATIONSHIP_4.RELATIONSHIP_4_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_4_PK'
     and t.table_name='RELATIONSHIP_4'
) then
   drop index RELATIONSHIP_4.RELATIONSHIP_4_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RELATIONSHIP_4'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RELATIONSHIP_4
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_7_FK'
     and t.table_name='RELATIONSHIP_5'
) then
   drop index RELATIONSHIP_5.RELATIONSHIP_7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_6_FK'
     and t.table_name='RELATIONSHIP_5'
) then
   drop index RELATIONSHIP_5.RELATIONSHIP_6_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_5_PK'
     and t.table_name='RELATIONSHIP_5'
) then
   drop index RELATIONSHIP_5.RELATIONSHIP_5_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RELATIONSHIP_5'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RELATIONSHIP_5
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_9_FK'
     and t.table_name='RELATIONSHIP_6'
) then
   drop index RELATIONSHIP_6.RELATIONSHIP_9_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_8_FK'
     and t.table_name='RELATIONSHIP_6'
) then
   drop index RELATIONSHIP_6.RELATIONSHIP_8_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_6_PK'
     and t.table_name='RELATIONSHIP_6'
) then
   drop index RELATIONSHIP_6.RELATIONSHIP_6_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RELATIONSHIP_6'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RELATIONSHIP_6
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_1_FK'
     and t.table_name='SIMPANAN'
) then
   drop index SIMPANAN.RELATIONSHIP_1_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SIMPANAN_PK'
     and t.table_name='SIMPANAN'
) then
   drop index SIMPANAN.SIMPANAN_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SIMPANAN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SIMPANAN
end if;

/*==============================================================*/
/* Table: ANGGOTA                                               */
/*==============================================================*/
create table ANGGOTA 
(
   ID_ANGGOTA           integer                        not null,
   ID_PETUGAS           integer                        null,
   ID_DENDA             integer                        null,
   NAMA_ANGGOTA         varchar(20)                    null,
   ALAMAT_ANGGOTA       varchar(50)                    null,
   TLP_ANGGOTA          varchar(12)                    null,
   TTL_ANGGOTA          varchar(30)                    null,
   PEKERJAAN            varchar(20)                    null,
   constraint PK_ANGGOTA primary key (ID_ANGGOTA)
);

/*==============================================================*/
/* Index: ANGGOTA_PK                                            */
/*==============================================================*/
create unique index ANGGOTA_PK on ANGGOTA (
ID_ANGGOTA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on ANGGOTA (
ID_PETUGAS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on ANGGOTA (
ID_DENDA ASC
);

/*==============================================================*/
/* Table: DENDA                                                 */
/*==============================================================*/
create table DENDA 
(
   ID_DENDA             integer                        not null,
   ID_PETUGAS           integer                        null,
   TOTAL_DENDA          numeric(20)                    null,
   DENDA_BERAPA_HARI    numeric(20)                    null,
   constraint PK_DENDA primary key (ID_DENDA)
);

/*==============================================================*/
/* Index: DENDA_PK                                              */
/*==============================================================*/
create unique index DENDA_PK on DENDA (
ID_DENDA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on DENDA (
ID_PETUGAS ASC
);

/*==============================================================*/
/* Table: PENGEMBALIAN                                          */
/*==============================================================*/
create table PENGEMBALIAN 
(
   ID_PENGEMBALIAN      integer                        not null,
   ID_PETUGAS           integer                        null,
   TGL_PENGEMBALIAN     date                           null,
   NOMINAL_PENEMBALIAN  numeric(20)                    null,
   constraint PK_PENGEMBALIAN primary key (ID_PENGEMBALIAN)
);

/*==============================================================*/
/* Index: PENGEMBALIAN_PK                                       */
/*==============================================================*/
create unique index PENGEMBALIAN_PK on PENGEMBALIAN (
ID_PENGEMBALIAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on PENGEMBALIAN (
ID_PETUGAS ASC
);

/*==============================================================*/
/* Table: PETUGAS_KOPERASI                                      */
/*==============================================================*/
create table PETUGAS_KOPERASI 
(
   ID_PETUGAS           integer                        not null,
   NAMA_PETUGAS         varchar(20)                    null,
   TTL_PETUGAS          varchar(20)                    null,
   EMAIL                varchar(50)                    null,
   ALAMAT               varchar(50)                    null,
   NO_TLP               varchar(12)                    null,
   constraint PK_PETUGAS_KOPERASI primary key (ID_PETUGAS)
);

/*==============================================================*/
/* Index: PETUGAS_KOPERASI_PK                                   */
/*==============================================================*/
create unique index PETUGAS_KOPERASI_PK on PETUGAS_KOPERASI (
ID_PETUGAS ASC
);

/*==============================================================*/
/* Table: PINJAMANAN                                            */
/*==============================================================*/
create table PINJAMANAN 
(
   ID_PINJAMAN          integer                        not null,
   ID_PETUGAS           integer                        null,
   NOMINAL              numeric(10)                    null,
   TGL_PJMAN            date                           null,
   constraint PK_PINJAMANAN primary key (ID_PINJAMAN)
);

/*==============================================================*/
/* Index: PINJAMANAN_PK                                         */
/*==============================================================*/
create unique index PINJAMANAN_PK on PINJAMANAN (
ID_PINJAMAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on PINJAMANAN (
ID_PETUGAS ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_4                                        */
/*==============================================================*/
create table RELATIONSHIP_4 
(
   ID_SIMPANAN          integer                        not null,
   ID_ANGGOTA           integer                        not null,
   constraint PK_RELATIONSHIP_4 primary key clustered (ID_SIMPANAN, ID_ANGGOTA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_4_PK on RELATIONSHIP_4 (
ID_SIMPANAN ASC,
ID_ANGGOTA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on RELATIONSHIP_4 (
ID_SIMPANAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on RELATIONSHIP_4 (
ID_ANGGOTA ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_5                                        */
/*==============================================================*/
create table RELATIONSHIP_5 
(
   ID_ANGGOTA           integer                        not null,
   ID_PENGEMBALIAN      integer                        not null,
   constraint PK_RELATIONSHIP_5 primary key clustered (ID_ANGGOTA, ID_PENGEMBALIAN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_5_PK on RELATIONSHIP_5 (
ID_ANGGOTA ASC,
ID_PENGEMBALIAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on RELATIONSHIP_5 (
ID_ANGGOTA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on RELATIONSHIP_5 (
ID_PENGEMBALIAN ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_6                                        */
/*==============================================================*/
create table RELATIONSHIP_6 
(
   ID_ANGGOTA           integer                        not null,
   ID_PINJAMAN          integer                        not null,
   constraint PK_RELATIONSHIP_6 primary key clustered (ID_ANGGOTA, ID_PINJAMAN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_6_PK on RELATIONSHIP_6 (
ID_ANGGOTA ASC,
ID_PINJAMAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on RELATIONSHIP_6 (
ID_ANGGOTA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on RELATIONSHIP_6 (
ID_PINJAMAN ASC
);

/*==============================================================*/
/* Table: SIMPANAN                                              */
/*==============================================================*/
create table SIMPANAN 
(
   ID_SIMPANAN          integer                        not null,
   ID_PETUGAS           integer                        null,
   TGL_SIMPANAN         date                           null,
   BESAR_SIMPANAN       varchar(20)                    null,
   constraint PK_SIMPANAN primary key (ID_SIMPANAN)
);

/*==============================================================*/
/* Index: SIMPANAN_PK                                           */
/*==============================================================*/
create unique index SIMPANAN_PK on SIMPANAN (
ID_SIMPANAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on SIMPANAN (
ID_PETUGAS ASC
);

alter table ANGGOTA
   add constraint FK_ANGGOTA_RELATIONS_PETUGAS_ foreign key (ID_PETUGAS)
      references PETUGAS_KOPERASI (ID_PETUGAS)
      on update restrict
      on delete restrict;

alter table ANGGOTA
   add constraint FK_ANGGOTA_RELATIONS_DENDA foreign key (ID_DENDA)
      references DENDA (ID_DENDA)
      on update restrict
      on delete restrict;

alter table DENDA
   add constraint FK_DENDA_RELATIONS_PETUGAS_ foreign key (ID_PETUGAS)
      references PETUGAS_KOPERASI (ID_PETUGAS)
      on update restrict
      on delete restrict;

alter table PENGEMBALIAN
   add constraint FK_PENGEMBA_RELATIONS_PETUGAS_ foreign key (ID_PETUGAS)
      references PETUGAS_KOPERASI (ID_PETUGAS)
      on update restrict
      on delete restrict;

alter table PINJAMANAN
   add constraint FK_PINJAMAN_RELATIONS_PETUGAS_ foreign key (ID_PETUGAS)
      references PETUGAS_KOPERASI (ID_PETUGAS)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_4
   add constraint FK_RELATION_RELATIONS_SIMPANAN foreign key (ID_SIMPANAN)
      references SIMPANAN (ID_SIMPANAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_4
   add constraint FK_RELATION_RELATIONS_ANGGOTA foreign key (ID_ANGGOTA)
      references ANGGOTA (ID_ANGGOTA)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_5
   add constraint FK_RELATION_RELATIONS_ANGGOTA foreign key (ID_ANGGOTA)
      references ANGGOTA (ID_ANGGOTA)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_5
   add constraint FK_RELATION_RELATIONS_PENGEMBA foreign key (ID_PENGEMBALIAN)
      references PENGEMBALIAN (ID_PENGEMBALIAN)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_6
   add constraint FK_RELATION_RELATIONS_ANGGOTA foreign key (ID_ANGGOTA)
      references ANGGOTA (ID_ANGGOTA)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_6
   add constraint FK_RELATION_RELATIONS_PINJAMAN foreign key (ID_PINJAMAN)
      references PINJAMANAN (ID_PINJAMAN)
      on update restrict
      on delete restrict;

alter table SIMPANAN
   add constraint FK_SIMPANAN_RELATIONS_PETUGAS_ foreign key (ID_PETUGAS)
      references PETUGAS_KOPERASI (ID_PETUGAS)
      on update restrict
      on delete restrict;

