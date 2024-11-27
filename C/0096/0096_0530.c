#include <stdio.h>

int extvar;
int *extptr;
int funcl1(signed char           ,
           short int             ,
           int                   ,
           long long int         ,
           unsigned char         ,
           unsigned short int    ,
           unsigned int          ,
           unsigned long long int,
           float                 ,
           double                ,
           long double           );
int funcl2(signed char           ,
           short int             ,
           int                   ,
           long long int         ,
           unsigned char         ,
           unsigned short int    ,
           unsigned int          ,
           unsigned long long int,
           float                 ,
           double                ,
           long double           );
int funcl3(signed char           ,
           short int             ,
           int                   ,
           long long int         ,
           unsigned char         ,
           unsigned short int    ,
           unsigned int          ,
           unsigned long long int,
           float                 ,
           double                ,
           long double           );
struct str {
           signed char            si1;
           short int              si2;
           int                    si4;
           long long int          si8;
           unsigned char          su1;
           unsigned short int     su2;
           unsigned int           su4;
           unsigned long long int su8;
           float                  sr4;
           double                 sr8;
           long double            srq;
           };
int main()
{
signed char            li1=0;
short int              li2=2;
int                    li4=3;
long long int          li8=4;
unsigned char          lu1=5;
unsigned short int     lu2=6;
unsigned int           lu4=7;
unsigned long long int lu8=8;
float                  lr4=9.0;
double                 lr8=10.0;
long double            lrq=11.0;
 
struct str strl = { 0,2,3,4,5,6,7,8,9.0,10.0,11.0 };
 
int iresult;
printf("  \n");
 

iresult=funcl1(li1,li2,li4,li8,lu1,lu2,lu4,lu8,lr4,lr8,lrq);
if(iresult==66)
  { printf(" (1) OK  %d \n",iresult); }
else
  { printf(" (1) NG  %d \n",iresult); }
 

extvar=0;
        funcl2(strl.si1,strl.si2,strl.si4,strl.si8,
               strl.su1,strl.su2,strl.su4,strl.su8,
               strl.sr4,strl.sr8,strl.srq);
if(extvar==66)
  { printf(" (2) OK  %d \n",extvar ); }
else
  { printf(" (2) NG  %d \n",extvar ); }
 

        funcl3(li1,li2,li4,li8,lu1,lu2,lu4,lu8,lr4,lr8,lrq);
if(*extptr==66)
  { printf(" (3) OK  %d \n",*extptr ); }
else
  { printf(" (3) NG  %d \n",*extptr ); }
}
 
int funcl1(signed char            pi1,
           short int              pi2,
           int                    pi4,
           long long int          pi8,
           unsigned char          pu1,
           unsigned short int     pu2,
           unsigned int           pu4,
           unsigned long long int pu8,
           float                  pr4,
           double                 pr8,
           long double            prq )
{
  int intvar;
  printf(" FUNCL1 ENTERED : PI1 =  %d \n",pi1);
  if(pi1==0)
    return(intvar=
           funcl1(pi1+1,prq,pr8,pr4,pu8,pu4,pu2,pu1,pi8,pi4,pi2));
  else
    return(pi1+pi2+pi4+pi8+pu1+pu2+pu4+pu8+pr4+pr8+prq);
}
 
int funcl2(signed char            qi1,
           short int              qi2,
           int                    qi4,
           long long int          qi8,
           unsigned char          qu1,
           unsigned short int     qu2,
           unsigned int           qu4,
           unsigned long long int qu8,
           float                  qr4,
           double                 qr8,
           long double            qrq )
{
  printf(" FUNCL2 ENTERED : QI1 =  %d \n",qi1);
  if(qi1==1)
    return(qi1+qi2+qi4+qi8+qu1+qu2+qu4+qu8+qr4+qr8+qrq);
  else
    return(extvar=
           funcl2(qi1+1,qrq,qr8,qr4,qu8,qu4,qu2,qu1,qi8,qi4,qi2));
}
 
int funcl3(signed char            wi1,
           short int              wi2,
           int                    wi4,
           long long int          wi8,
           unsigned char          wu1,
           unsigned short int     wu2,
           unsigned int           wu4,
           unsigned long long int wu8,
           float                  wr4,
           double                 wr8,
           long double            wrq )
{
  static int stavar=0;
  extptr=&stavar;
  printf(" FUNCL3 ENTERED : WI1 =  %d \n",wi1);
  if(wi1==1)
    return(wi1+wi2+wi4+wi8+wu1+wu2+wu4+wu8+wr4+wr8+wrq);
  else
    return(stavar=
           funcl3(wi1+1,wrq,wr8,wr4,wu8,wu4,wu2,wu1,wi8,wi4,wi2));
}
