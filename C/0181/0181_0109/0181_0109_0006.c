




#include <stdio.h>
#include <math.h>
#include <float.h>

static void max()
{
  float fl=0x1.fffffep+127f;
  double m3= 0x1.fffffffffffffp+1023; 

  long double ml= 0x1.fffffffffffffffep+16383L;


  int *p0=&fl;
  int *p=&m3;
  int *p2=&ml;
  short *i2_p;

  printf("FLT_MAX(%x): %g\n",p0[0],fl);

  printf("DBL_MAX(%x %x): %g\n",p[0],p[1],m3);



  i2_p = &p2[2];
#ifndef OBE
  if(p2[0]==0x0 && p2[1]==0x80000000 && i2_p[0]==0x7fff){
    printf("LDBL_MAX : OK\n");
  }
  else{
    printf("LDBL_MAX : NG\n");
    printf("i2_p=%x %x\n",i2_p[0],i2_p[1]); 
    printf("LDBL_MAX(%x %x %x)\n",p2[0],p2[1],i2_p[0]); 
  }
#else
  i2_p[0] &= 0xffff;
  if(p2[0]==0xffffffff && p2[1]==0xffffffff && i2_p[0]==0x7ffe){
    printf("LDBL_MAX : OK\n");
  }
  else{
    printf("LDBL_MAX : NG\n");
    printf("i2_p=%x %x\n",i2_p[0],i2_p[1]); 
    printf("LDBL_MAX(%x %x %x)\n",p2[0],p2[1],i2_p[0]&0xffff); 
  }
#endif

}

static void float_decimal()
{
  float f=FLT_MAX;
  double d=DBL_MAX;
  long double ld=LDBL_MAX;

  int *p0=&f;
  int *p1= &d;
  int *p2 = &ld;

  printf("\nDECIMAL CONSTANT\n");
  printf("FLT_MAX(%x): %g\n",p0[0],f);

  printf("DBL_MAX(%x %x): %g\n",p1[0],p1[1],d);

  printf("LDBL_MAX: %Lg\n",ld);
}

int lto_sub_7()
{
  printf("** MAX TEST **\n");
  max();
  float_decimal();
}


