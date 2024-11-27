#include <stdlib.h>

 
#include <stdio.h>
#include <math.h>

struct 
{
  union {
    double       rx;
    double       ry;
  } rxy;
  union {
    double       ra[20];
    double       rc;
    double       rb;
  } rabc;
  union {
    long double  da[20];
    long double  dc;
  } dac;
  double         rd[10];
} systab;
		  
int main()
{
  int          i;
  
  for(i=0;i<20;i++) systab.rabc.ra[i]=systab.dac.da[i]=1.0;
  for(i=0;i<10;i++) systab.rd[i]=1.0;

  for(i=4;i<14;i++) {
    systab.rxy.ry=systab.rd[i-4];+i;
    if(systab.rxy.ry>=8.0) {
      systab.rabc.rc=11.0;
      if(systab.rabc.rb==1) systab.rd[i-4]=systab.dac.da[i]+systab.dac.da[i+1];
    } else {
      systab.rabc.rc=15.0;
      if(systab.rabc.rb==1) systab.rd[i-4]=systab.dac.da[i]+systab.dac.da[i+1];
    }
  }

  printf("RA => ");
  for(i=0;i<20;i++) printf("%g \n",systab.rabc.ra[i]);
  printf("\nRD => ");
  for(i=0;i<10;i++) printf("%g\n",systab.rd[i]);
  printf("\nRX => %g \n",systab.rxy.rx);
  exit(0);
}
