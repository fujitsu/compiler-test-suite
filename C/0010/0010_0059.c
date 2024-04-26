#include <stdio.h>

int main()
   {
     signed char             sch,sch1;
     signed short int        ssia,ssib,ssi1;
     signed long int         slia,slib,slic,slid,sli1;
     signed long long int    sllia,sllib,sllic,sllid,slli1;
     signed long long int    sllie,sllif,sllig;
     float                   fla,flb,flc,fld,fle,flf,flg,fl1;
     double                  dba,dbb,dbc,dbd,dbe,dbf,dbg,dbh,db1;
     long double             ldba,ldbb,ldbc,ldbd,ldbe,ldbf,ldb1;
     long double             ldbg,ldbh,ldbi,ldbj;
   unsigned char             uch,uch1;
   unsigned short int        usia,usib,usi1;
   unsigned long int         ulia,ulib,ulic,ulid,uli1;
   unsigned long long int    ullia,ullib,ullic,ullid,ullie;
   unsigned long long int    ullif,ullig,ulli1;

  printf("********** TEST START **********\n");

           sch1=1;
           ssi1=2;
           sli1=3;
          slli1=4;
           uch1=5;
           usi1=6;
           uli1=7;
          ulli1=8;
            fl1=5.5;
            db1=6.5;
           ldb1=7.5;

          ssia = sch1+ssi1;             /*  i1 >>> i2  */
          slia = sch1+sli1;             /*  i1 >>> i4  */
         sllia = sch1+slli1;            /*  i1 >>> i8  */
          usia = sch1+usi1;             /*  i1 >>> u2  */
          ulia = sch1+uli1;             /*  i1 >>> u4  */
         ullia = sch1+ulli1;            /*  i1 >>> u8  */
           fla = sch1+fl1;              /*  i1 >>> r4  */
           dba = sch1+db1;              /*  i1 >>> r8  */
          ldba = sch1+ldb1;             /*  i1 >>> r16 */
          slib = ssi1+sli1;             /*  i2 >>> i4  */
         sllib = ssi1+slli1;            /*  i2 >>> i8  */
          ulib = ssi1+uli1;             /*  i2 >>> u4  */
         ullib = ssi1+ulli1;            /*  i2 >>> u8  */
           flb = ssi1+fl1;              /*  i2 >>> r4  */
           dbb = ssi1+db1;              /*  i2 >>> r8  */
          ldbb = ssi1+ldb1;             /*  i2 >>> r16 */
         sllic = sli1+slli1;            /*  i4 >>> i8  */
         ullic = sli1+ulli1;            /*  i4 >>> u8  */
           flc = sli1+fl1;              /*  i4 >>> r4  */
           dbc = sli1+db1;              /*  i4 >>> r8  */
          ldbc = sli1+ldb1;             /*  i4 >>> r16 */
         ullig = slli1+ulli1;           /*  i8 >>> u8  */
           dbd = slli1+db1;             /*  i8 >>> r8  */
          ldbd = slli1+ldb1;            /*  i8 >>> r16 */
         sllid = slli1+fl1;             /*  r4 >>> i8  */
          ssib = uch1+ssi1;             /*  u1 >>> i2  */
          slic = uch1+sli1;             /*  u1 >>> i4  */
         sllie = uch1+slli1;            /*  u1 >>> i8  */
          usib = uch1+usi1;             /*  u1 >>> u2  */
          ulic = uch1+uli1;             /*  u1 >>> u4  */
         ullid = uch1+ulli1;            /*  u1 >>> u8  */
           fle = uch1+fl1;              /*  u1 >>> r4  */
           dbf = uch1+db1;              /*  u1 >>> r8  */
          ldbg = uch1+ldb1;             /*  u1 >>> r16 */
          slid = usi1+sli1;             /*  u2 >>> i4  */
         sllif = usi1+slli1;            /*  u2 >>> i8  */
          ulid = usi1+uli1;             /*  u2 >>> u4  */
         ullie = usi1+ulli1;            /*  u2 >>> u8  */
           flf = usi1+fl1;              /*  u2 >>> r4  */
           dbg = usi1+db1;              /*  u2 >>> r8  */
          ldbh = usi1+ldb1;             /*  u2 >>> r16 */
         sllig = uli1+slli1;            /*  u4 >>> i8  */
         ullif = uli1+ulli1;            /*  u4 >>> u8  */
           flg = uli1+fl1;              /*  u4 >>> r4  */
           dbh = uli1+db1;              /*  u4 >>> r8  */
          ldbi = uli1+ldb1;             /*  u4 >>> r16 */
          ldbj = ulli1+ldb1;            /*  u8 >>> r16 */
           dbe = fl1+db1;               /*  r4 >>> r8  */
          ldbe = fl1+ldb1;              /*  r4 >>> r16 */
          ldbf = db1+ldb1;              /*  r8 >>> r16 */

    if(ssia == 3)
    printf(" I1 >>> I2  --- O   K ---\n");
    else
    printf(" I1 >>> I2  --- N   G ---\n");
    if(slia == 4)
    printf(" I1 >>> I4  --- O   K ---\n");
    else
    printf(" I1 >>> I4  --- N   G ---\n");
    if(sllia == 5)
    printf(" I1 >>> I8  --- O   K ---\n");
    else
    if(usia == 7)
    printf(" I1 >>> U2  --- O   K ---\n");
    else
    printf(" I1 >>> U2  --- N   G ---\n");
    if(ulia == 8)
    printf(" I1 >>> U4  --- O   K ---\n");
    else
    printf(" I1 >>> U4  --- N   G ---\n");
    if(ullia == 9)
    printf(" I1 >>> U8  --- O   K ---\n");
    else
    printf(" I1 >>> U8  --- N   G ---\n");
    if(fla == 6.5)
    printf(" I1 >>> R4  --- O   K ---\n");
    else
    printf(" I1 >>> R4  --- N   G ---\n");
    if(dba == 7.5)
    printf(" I1 >>> R8  --- O   K ---\n");
    else
    printf(" I1 >>> R8  --- N   G ---\n");
    if(ldba == 8.5)
    printf(" I1 >>> R16 --- O   K ---\n");
    else
    printf(" I1 >>> R16 --- N   G ---\n");
    if(slib == 5)
    printf(" I2 >>> I4  --- O   K ---\n");
    else
    printf(" I2 >>> I4  --- N   G ---\n");
    if(sllib == 6)
    printf(" I2 >>> I8  --- O   K ---\n");
    else
    printf(" I2 >>> I8  --- N   G ---\n");
    if(ulib == 9)
    printf(" I2 >>> U4  --- O   K ---\n");
    else
    printf(" I2 >>> U4  --- N   G ---\n");
    if(ullib == 10)
    printf(" I2 >>> U8  --- O   K ---\n");
    else
    printf(" I2 >>> U8  --- N   G ---\n");
    if(flb == 7.5)
    printf(" I2 >>> R4  --- O   K ---\n");
    else
    printf(" I2 >>> R4  --- N   G ---\n");
    if(dbb == 8.5)
    printf(" I2 >>> R8  --- O   K ---\n");
    else
    printf(" I2 >>> R8  --- N   G ---\n");
    if(ldbb == 9.5)
    printf(" I2 >>> R16 --- O   K ---\n");
    else
    printf(" I2 >>> R16 --- N   G ---\n");
    if(sllic == 7)
    printf(" I4 >>> I8  --- O   K ---\n");
    else
    printf(" I4 >>> I8  --- N   G ---\n");
    if(ullic == 11)
    printf(" I4 >>> U8  --- O   K ---\n");
    else
    printf(" I4 >>> U8  --- N   G ---\n");
    if(flc == 8.5)
    printf(" I4 >>> R4  --- O   K ---\n");
    else
    printf(" I4 >>> R4  --- N   G ---\n");
    if(dbc == 9.5)
    printf(" I4 >>> R8  --- O   K ---\n");
    else
    printf(" I4 >>> R8  --- N   G ---\n");
    if(ldbc == 10.5)
    printf(" I4 >>> R16 --- O   K ---\n");
    else
    printf(" I4 >>> R16 --- N   G ---\n");
    if(ullig == 12)
    printf(" I8 >>> U8  --- O   K ---\n");
    else
    printf(" I8 >>> U8  --- N   G ---\n");
    if(dbd == 10.5)
    printf(" I8 >>> R8  --- O   K ---\n");
    else
    printf(" I8 >>> R8  --- N   G ---\n");
    if(ldbd == 11.5)
    printf(" I8 >>> R16 --- O   K ---\n");
    else
    printf(" I8 >>> R16 --- N   G ---\n");
    if(ssib == 7)
    printf(" U1 >>> I2  --- O   K ---\n");
    else
    printf(" U1 >>> I2  --- N   G ---\n");
    if(slic == 8)
    printf(" U1 >>> I4  --- O   K ---\n");
    else
    printf(" U1 >>> I4  --- N   G ---\n");
    if(sllie == 9)
    printf(" U1 >>> I8  --- O   K ---\n");
    else
    printf(" U1 >>> I8  --- N   G ---\n");
    if(usib == 11)
    printf(" U1 >>> U2  --- O   K ---\n");
    else
    printf(" U1 >>> U2  --- N   G ---\n");
    if(ulic == 12)
    printf(" U1 >>> U4  --- O   K ---\n");
    else
    printf(" U1 >>> U4  --- N   G ---\n");
    if(ullid == 13)
    printf(" U1 >>> U8  --- O   K ---\n");
    else
    printf(" U1 >>> U8  --- N   G ---\n");
    if(fle == 10.5)
    printf(" U1 >>> R4  --- O   K ---\n");
    else
    printf(" U1 >>> R4  --- N   G ---\n");
    if(dbf == 11.5)
    printf(" U1 >>> R8  --- O   K ---\n");
    else
    printf(" U1 >>> R8  --- N   G ---\n");
    if(ldbg == 12.5)
    printf(" U1 >>> R16 --- O   K ---\n");
    else
    printf(" U1 >>> R16 --- N   G ---\n");
    if(slid == 9)
    printf(" U2 >>> I4  --- O   K ---\n");
    else
    printf(" U2 >>> I4  --- N   G ---\n");
    if(sllif == 10)
    printf(" U2 >>> I8  --- O   K ---\n");
    else
    printf(" U2 >>> I8  --- N   G ---\n");
    if(ulid == 13)
    printf(" U2 >>> U4  --- O   K ---\n");
    else
    printf(" U2 >>> U4  --- N   G ---\n");
    if(ullie == 14)
    printf(" U2 >>> U8  --- O   K ---\n");
    else
    printf(" U2 >>> U8  --- N   G ---\n");
    if(flf == 11.5)
    printf(" U2 >>> R4  --- O   K ---\n");
    else
    printf(" U2 >>> R4  --- N   G ---\n");
    if(dbg == 12.5)
    printf(" U2 >>> R8  --- O   K ---\n");
    else
    printf(" U2 >>> R8  --- N   G ---\n");
    if(ldbh == 13.5)
    printf(" U2 >>> R16 --- O   K ---\n");
    else
    printf(" U2 >>> R16 --- N   G ---\n");
    if(sllig == 11)
    printf(" U4 >>> I8  --- O   K ---\n");
    else
    printf(" U4 >>> I8  --- N   G ---\n");
    if(ullif == 15)
    printf(" U4 >>> U8  --- O   K ---\n");
    else
    printf(" U4 >>> U8  --- N   G ---\n");
    if(flg == 12.5)
    printf(" U4 >>> R4  --- O   K ---\n");
    else
    printf(" U4 >>> R4  --- N   G ---\n");
    if(dbh == 13.5)
    printf(" U4 >>> R8  --- O   K ---\n");
    else
    printf(" U4 >>> R8  --- N   G ---\n");
    if(ldbi == 14.5)
    printf(" U4 >>> R16 --- O   K ---\n");
    else
    printf(" U4 >>> R16 --- N   G ---\n");
    if(ldbj == 15.5)
    printf(" U8 >>> R16 --- O   K ---\n");
    else
    printf(" U8 >>> R16 --- N   G ---\n");
    if(sllid == 9)
    printf(" R4 >>> I8  --- O   K ---\n");
    else
    printf(" R4 >>> I8  --- N   G ---\n");
    if(dbe == 12.0)
    printf(" R4 >>> R8  --- O   K ---\n");
    else
    printf(" R4 >>> R8  --- N   G ---\n");
    if(ldbe == 13.0)
    printf(" R4 >>> R16 --- O   K ---\n");
    else
    printf(" R4 >>> R16 --- N   G ---\n");
    if(ldbf == 14.0)
    printf(" R8 >>> R16 --- O   K ---\n");
    else
    printf(" R8 >>> R16 --- N   G ---\n");

    printf("********** TEST  END  **********\n");

   }
