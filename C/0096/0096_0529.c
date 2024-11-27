#include <stdio.h>

struct str
{
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
} ;
 
int funcl1(),funcl2();
int pix=3;
int main()
{
 
int lia=1;
int lib=2;
int lic=3;
 
struct str strl = { 0,2,3,4,5,6,7,8,9.0,10.0,11.0 };
 
int iresult;
printf("  \n");
 
iresult=funcl1(lia,lib,lic);
if(iresult==6)
  { printf(" (1) OK  %d \n",iresult); }
else
  { printf(" (1) NG  %d \n",iresult); }
 
strl.si1=0;
strl.si2=4;
strl.si4=6;
strl.si8=8;
strl.su1=10;
strl.su2=12;
strl.su4=14;
strl.su8=16;
strl.sr4=18.0;
strl.sr8=20.0;
strl.srq=22.0;
iresult=funcl2(strl);
if(iresult==132)
  { printf(" (2) OK  %d \n",iresult); }
else
  { printf(" (2) NG  %d \n",iresult); }
}
 
int funcl1(pia,pib,pic)
int pia,pib,pic;
{
  printf(" FUNCL1 ENTERED : PIA =  %d \n",pia);
  if(pia==1)
    return(funcl1(pix,pib,pia));
    
  else
    return(pia+pib+pic);
}
 
int funcl2(strp)
struct str strp;
{
  printf(" FUNCL2 ENTERED : SI1 =  %d \n",strp.si1);
  if(strp.si1==0)
    { strp.si1+=2; return(funcl2(strp)); }
  else
    return(strp.si1+strp.si2+strp.si4+strp.si8+
           strp.su1+strp.su2+strp.su4+strp.su8+
           strp.sr4+strp.sr8+strp.srq);
}
