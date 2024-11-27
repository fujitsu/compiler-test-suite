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
printf(" SNITR10 \n");
 
 
iresult=funcl1(li1,li2,li4,li8,lu1,lu2,lu4,lu8,lr4,lr8,lrq);
if(iresult==66)
  { printf(" P075431 OK  %d \n",iresult); }
else
  { printf(" P075431 NG  %d \n",iresult); }
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
 
  if(pi1==0)
    return(intvar=
           funcl1(pi1+1,prq,pr8,pr4,pu8,pu4,pu2,pu1,pi8,pi4,pi2));
  else
    return(pi1+pi2+pi4+pi8+pu1+pu2+pu4+pu8+pr4+pr8+prq);
}
