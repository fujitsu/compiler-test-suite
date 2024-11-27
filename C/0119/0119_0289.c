#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
long long int glb;
int main()
{
  struct tag1 {
                signed       char i1 :1;
                signed short int  i2 :4;
                signed long  int  i4 :8;
              } stri;

  struct tag2 {
                unsigned       char u1 :1;
                unsigned short int  u2 :4;
                unsigned long  int  u4 :8;
              } stru;

  unsigned long long int uu8,w1;
    signed long long int ii8,w2;
  int i,j;

  printf("********** SCRLC14 TEST START **********\n");

for(i=0;i<5;i++)
    {
      uu8=glb+i;
      stri.i1=uu8;
      glb=stri.i1+1;
      uu8=glb+i;
      stri.i1=uu8;
      stru.u1=stri.i1+1;
    }

if(glb!=1)printf(" 1:----- ng ----- \n");

for(i=0;i<5;i++)
    {
      uu8=glb+i;
      stri.i2=uu8;
      glb=stri.i2+1;
      uu8=glb+i;
      stri.i2=uu8;
      stru.u2=stri.i2+1;
    }

if(glb!=0) printf(" 2:----- ng ----- \n");

for(i=0;i<5;i++)
    {
      uu8=glb+i;
      stri.i4=uu8;
      glb=stri.i4+1;
      uu8=glb+i;
      stri.i4=uu8;
      stru.u4=stri.i4+1;
    }

if(glb!=15) printf(" 3:----- ng ----- \n");

for(i=0;i<5;i++)
    {
      ii8=glb+i;
      stru.u1=ii8;
      glb=stru.u1+1;
      ii8=glb+i;
      stru.u1=ii8;
      stri.i1=stru.u1+1;
    }


for(i=0;i<5;i++)
    {
      ii8=glb+i;
      stru.u2=ii8;
      glb=stru.u2+1;
      ii8=glb+i;
      stru.u2=ii8;
      stri.i2=stru.u2+1;
    }

      glb = 1;

for(i=0;i<5;i++)
    {
      ii8=glb+i;
      stru.u4=ii8;
      glb=stru.u4+1;
      ii8=glb+i;
      stru.u4=ii8;
      stri.i4=stru.u4+1;
    }

     if (glb == 16 && ii8 == 20 && stru.u4 == 20 && stri.i4 == 21)
         printf("***** SCRLC14 - 01 ***** O   K *****\n");
     else
         printf("***** SCRLC14 - 01 ***** N   G *****\n");

  printf("********** SCRLC14 TEST  END  **********\n");

exit (0);
}
