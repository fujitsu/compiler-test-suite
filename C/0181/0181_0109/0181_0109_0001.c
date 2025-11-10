






#include <stdio.h>
#include <float.h>

static void min()
{

  float  fl=0x1.0p-126f;
  double m3=0x1.0p-1022;
  long double ml=0x1.0p-16382L;

 int *p0=&fl;
 int *p=&m3;
 int *p2=&ml;

  printf("min test\n");
  printf("FLT_MIN:%g: %g\n",FLT_MIN,fl);
  printf("DBL_MIN:%g: %g\n",DBL_MIN,m3);
  printf("LDBL_MIN:%Lg: %Lg\n",LDBL_MIN,ml);

  printf("FLT_MIN(%x): %g\n",p0[0],fl);

  printf("DBL_MIN(%x %x): %g\n",p[0],p[1],m3);

  printf("LDBL_MIN: %Lg\n",ml);

}

int lto_sub_2()
{
  min();
}
