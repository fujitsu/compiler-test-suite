#include <stdio.h>

 
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
 

signed char            fi1();
short int              fi2();
int                    fi4();
long long int          fi8();
unsigned char          fu1();
unsigned short int     fu2();
unsigned int           fu4();
unsigned long long int fu8();
float                  fr4();
double                 fr8();
long double            frq();
int funcl1(int                      xi    ,
           signed char            (*xi1)(),
           short int              (*xi2)(),
           int                    (*xi4)(),
           long long int          (*xi8)(),
           unsigned char          (*xu1)(),
           unsigned short int     (*xu2)(),
           unsigned int           (*xu4)(),
           unsigned long long int (*xu8)(),
           float                  (*xr4)(),
           double                 (*xr8)(),
           long double            (*xrq)());
int funcl2(signed char            * yi1,
           short int              * yi2,
           int                    * yi4,
           long long int          * yi8,
           unsigned char          * yu1,
           unsigned short int     * yu2,
           unsigned int           * yu4,
           unsigned long long int * yu8,
           float                  * yr4,
           double                 * yr8,
           long double            * yrq );
int funcl3(struct str *zstr);
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
 

signed char            * pi1=&li1;
short int              * pi2=&li2;
int                    * pi4=&li4;
long long int          * pi8=&li8;
unsigned char          * pu1=&lu1;
unsigned short int     * pu2=&lu2;
unsigned int           * pu4=&lu4;
unsigned long long int * pu8=&lu8;
float                  * pr4=&lr4;
double                 * pr8=&lr8;
long double            * prq=&lrq;
 

struct str  stra = { 0,2,3,4,5,6,7,8,9.0,10.0,11.0 };
 

struct str *pstr = &stra;
 
int iresult;
printf("  \n");
 

iresult=funcl1(0,fi1,fi2,fi4,fi8,fu1,fu2,fu4,fu8,fr4,fr8,frq);
if(iresult==66)
  { printf(" (1) OK  %d \n",iresult); }
else
  { printf(" (1) NG  %d \n",iresult); }
 

iresult=funcl2(pi1,pi2,pi4,pi8,pu1,pu2,pu4,pu8,pr4,pr8,prq);
if(iresult==66)
  { printf(" (2) OK  %d \n",iresult); }
else
  { printf(" (2) NG  %d \n",iresult); }
 

iresult=funcl3(pstr);
if(iresult==66)
  { printf(" (3) OK  %d \n",iresult); }
else
  { printf(" (3) NG  %d \n",iresult); }
}
 
int funcl1(int                      xi    ,
           signed char            (*xi1)(),
           short int              (*xi2)(),
           int                    (*xi4)(),
           long long int          (*xi8)(),
           unsigned char          (*xu1)(),
           unsigned short int     (*xu2)(),
           unsigned int           (*xu4)(),
           unsigned long long int (*xu8)(),
           float                  (*xr4)(),
           double                 (*xr8)(),
           long double            (*xrq)())
{
  printf(" FUNCL1 ENTERED : XI  =  %d \n",xi );
  if(xi==0)
    return(funcl1(1,xi1,xi2,xi4,xi8,xu1,xu2,xu4,xu8,xr4,xr8,xrq));
  else
    return(xi1(1)+xi2(2)+xi4(3)+xi8(4)+
           xu1(5)+xu2(6)+xu4(7)+xu8(8)+
           xr4(9)+xr8(10)+xrq(11)     );
}
 
int funcl2(signed char            * yi1,
           short int              * yi2,
           int                    * yi4,
           long long int          * yi8,
           unsigned char          * yu1,
           unsigned short int     * yu2,
           unsigned int           * yu4,
           unsigned long long int * yu8,
           float                  * yr4,
           double                 * yr8,
           long double            * yrq )
{
  printf(" FUNCL2 ENTERED : *YI1=  %d \n",*yi1);
  if(*yi1==1)
    return(*yi1+*yi2+*yi4+*yi8+
           *yu1+*yu2+*yu4+*yu8+
           *yr4+*yr8+*yrq);
  else
    {
      *yi1+=1;
      return(funcl2(yi1,yi2,yi4,yi8,yu1,yu2,yu4,yu8,yr4,yr8,yrq));
    }
}
 
int funcl3(struct str *zstr)
{
  printf(" FUNCL3 ENTERED : SI1 =  %d \n", zstr->si1);
  if(zstr->si1==0)
    { zstr->si1=1; return(funcl3(zstr)); }
  else
    return(zstr->si1+zstr->si2+zstr->si4+zstr->si8+
           zstr->su1+zstr->su2+zstr->su4+zstr->su8+
           zstr->sr4+zstr->sr8+zstr->srq          );
}
 
signed char            fi1(int i) { return(i); }
short int              fi2(int i) { return(i); }
int                    fi4(int i) { return(i); }
long long int          fi8(int i) { return(i); }
unsigned char          fu1(int i) { return(i); }
unsigned short int     fu2(int i) { return(i); }
unsigned int           fu4(int i) { return(i); }
unsigned long long int fu8(int i) { return(i); }
float                  fr4(int i) { return(i); }
double                 fr8(int i) { return(i); }
long double            frq(int i) { return(i); }
