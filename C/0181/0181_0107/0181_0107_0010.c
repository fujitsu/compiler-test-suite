#include <stdio.h>
struct ss1 {
  unsigned short f3; 
  signed long int  f2 : 27;
  signed  long  i4 : 1;
  signed  long  i4_1 : 1;
  signed  long  i4_2 : 1;
  signed  long  i4_3 : 1;
  signed  long  i4_4 : 1;
  signed  long  i4_5 : 1;
  short i2;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 61779774;
  v42.i4 =1;
  v42.i4_1 =1;
  v42.i4_5 =1;
  return v42;
}

static struct ss1 (*v6) () = v5;

int lto_sub_11()
{
  struct ss1 v57;
  int i;
  v57 = (*v6) ();

  if(v57.f2==61779774)
    printf("ok\n");
  else
    printf("ng\n");


    if(v57.i4==0xffffffff)

      printf("ok\n");
    else
      printf("ng\n");
  

    if(v57.i4_1==0xffffffff)

      printf("ok\n");
    else
      printf("ng\n");

    if(v57.i4_5==0xffffffff)

      printf("ok\n");
    else
      printf("ng\n");
}
