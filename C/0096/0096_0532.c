#include <stdio.h>

 
struct str {
             signed char            si1;
             short int              si2;
             int                    si4;
           };
 

long long int          funcl1();
unsigned long long int funcl2();
long double            funcl3();
struct str             funcl4();
int main()
{

signed char            li1=0;
short int              li2=2;
int                    li4=3;
 

struct str  stra = { 0,2,3 };
struct str  strb;
 
int iresult;
printf("  \n");
 

iresult=funcl1(li1,li2,li4);
if(iresult==6)
  printf(" (1) OK  %d \n",iresult);
else
  printf(" (1) NG  %d \n",iresult);
 

iresult=funcl2(li1,li2,li4);
if(iresult==6)
  printf(" (2) OK  %d \n",iresult);
else
  printf(" (2) NG  %d \n",iresult);
 

iresult=funcl3(li1,li2,li4);
if(iresult==6)
  printf(" (3) OK  %d \n",iresult);
else
  printf(" (3) NG  %d \n",iresult);
 

strb=funcl4(stra);
iresult=strb.si1+strb.si2+strb.si4;
if(iresult==6)
  printf(" (4) OK  %d \n",iresult);
else
  printf(" (4) NG  %d \n",iresult);
 
}
 
long long int funcl1(wi1,wi2,wi4)
                     signed char  wi1;
                     short int    wi2;
                     int          wi4;
{
  printf(" FUNCL1 ENTERED : WI1 =  %d \n",wi1);
  if(wi1==0)
    return(funcl1(1,wi2,wi4));
  else
    return(wi1+wi2+wi4);
}
 
unsigned long long int funcl2(xi1,xi2,xi4)
                              signed char  xi1;
                              short int    xi2;
                              int          xi4;
{
  printf(" FUNCL2 ENTERED : XI1 =  %d \n",xi1);
  if(xi1==1)
    return(xi1+xi2+xi4);
  else
    return(funcl2(1,xi2,xi4));
}
 
long double funcl3(yi1,yi2,yi4)
                   signed char  yi1;
                   short int    yi2;
                   int          yi4;
{
  printf(" FUNCL3 ENTERED : YI1 =  %d \n",yi1);
  if(yi1==1)
    return(yi1+yi2+yi4);
  else
    return(funcl3(1,yi2,yi4));
}
 
struct str funcl4(zstr)
                  struct str zstr;
{
  printf(" FUNCL4 ENTERED : SI1 =  %d \n", zstr.si1);
  if(zstr.si1==0)
    { zstr.si1=1; return(funcl4(zstr)); }
  else
    return(zstr);
}
