#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
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

  printf("********** SCPSI15 TEST START **********\n");

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

          ssia = sch1+ssi1;             
          slia = sch1+sli1;             
         sllia = sch1+slli1;          
          usia = sch1+usi1;            
          ulia = sch1+uli1;            
         ullia = sch1+ulli1;           
           fla = sch1+fl1;              
           dba = sch1+db1;             
          ldba = sch1+ldb1;            
          slib = ssi1+sli1;             
         sllib = ssi1+slli1;           
          ulib = ssi1+uli1;            
         ullib = ssi1+ulli1;           
           flb = ssi1+fl1;             
           dbb = ssi1+db1;              
          ldbb = ssi1+ldb1;            
         sllic = sli1+slli1;           
         ullic = sli1+ulli1;           
           flc = sli1+fl1;              
           dbc = sli1+db1;              
          ldbc = sli1+ldb1;             
         ullig = slli1+ulli1;         
           dbd = slli1+db1;             
          ldbd = slli1+ldb1;            
         sllid = slli1+fl1;            
          ssib = uch1+ssi1;            
          slic = uch1+sli1;           
         sllie = uch1+slli1;           
          usib = uch1+usi1;            
          ulic = uch1+uli1;             
         ullid = uch1+ulli1;          
           fle = uch1+fl1;              
           dbf = uch1+db1;              
          ldbg = uch1+ldb1;             
          slid = usi1+sli1;             
         sllif = usi1+slli1;           
          ulid = usi1+uli1;            
         ullie = usi1+ulli1;            
           flf = usi1+fl1;             
           dbg = usi1+db1;             
          ldbh = usi1+ldb1;             
         sllig = uli1+slli1;           
         ullif = uli1+ulli1;           
           flg = uli1+fl1;             
           dbh = uli1+db1;             
          ldbi = uli1+ldb1;             
          ldbj = ulli1+ldb1;            
           dbe = fl1+db1;              
          ldbe = fl1+ldb1;             
          ldbf = db1+ldb1;              

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

    printf("********** SCPSI15 TEST  END  **********\n");

exit (0);
   }
