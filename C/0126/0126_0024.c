#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

static void no1();
static void no2();
static void no3();
int main()
{
   puts("  test start");
   no1();
   no2();
   no3();
   puts("  test ended");
	exit(0);
}

static void no1()
{
      long int   i;
      float     n1[100],rs1[100];
      double    rd1[100];
      long int  n2[]= { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
                        10, 9, 8, 7, 6, 5, 4, 3, 2, 1}  ;
      for(i=0;i<100;i++)
      {
        n1[i] =pow(n2[i],((i+2)%(i+1)));
        rs1[i]=pow(n2[i],((i+2)%(i+1)));
        rd1[i]=pow(n2[i],((i+2)%(i+1)));
      }
      for(i=0;i<100;i++)
      {

        if((n1[i] - rs1[i]) <= -0.00001 && (n1[i] - rs1[i]) >= 0.00001) goto lb_ng;
        if((n1[i] - rd1[i]) <= -0.00001 && (n1[i] - rd1[i]) >= 0.00001) goto lb_ng;
      }
 lb_ok:
      puts(" ***** no.1 => ok *****");
      return;
 lb_ng:
      printf("i  =%d pow(%d , %d ) = %f \n",i,n2[i],(i+2)%(i+1),pow(n2[i],((i+2)%(i+1))));
      printf("n1 =%g\n",n1[i]);
      printf("rs1=%f\n",rs1[i]);
      printf("rd1=%g\n",rd1[i]);
      puts(" ***** no.1 => ng *****");
      return;
}

static void no2()
{
      long int   n2[100],i;
      float      n1[100],rs1[100],rs2[100];
      double     rd1[100],rd2[100];
      long int ivx[]={ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10,
                       1, 2, 3, 4, 5, 6, 7, 8, 9,10};
      for(i=0;i<100;i++) n2[99-i]=ivx[i];
      for(i=0;i<100;i++)
      {
        n1[i] =         pow(n2[i],         ivx[i]);
        rs1[i]=(float )(pow(n2[i],         ivx[i]));
        rd1[i]=(double)(pow(n2[i],         ivx[i]));
        rs2[i]=(float )(pow(n2[i],(float )(ivx[i])));
        rd2[i]=(double)(pow(n2[i],(double)(ivx[i])));
      }
      for(i=0;i<100;i++)
      {

        if((n1[i] - rs1[i]) <= -0.00001 && (n1[i] - rs1[i]) >= 0.00001) goto lb_ng;
        if((n1[i] - rd1[i]) <= -0.00001 && (n1[i] - rd1[i]) >= 0.00001) goto lb_ng;
        if((n1[i] - rs2[i]) <= -0.00001 && (n1[i] - rs2[i]) >= 0.00001) goto lb_ng;
        if((n1[i] - rd2[i]) <= -0.00001 && (n1[i] - rd2[i]) >= 0.00001) goto lb_ng;
      }
 lb_ok:
      puts(" ***** no.2 => ok *****");
      return;
 lb_ng:
      puts(" ***** no.2 => ng *****");
      printf("i  =%d pow(%d , %d ) = %f \n",i,n2[i],ivx[i],pow(n2[i],ivx[i]));
      printf("n1 =%g \n",n1[i]);
      printf("rs1=%g rs2=%g \n",rs1[i],rs2[i]);
      printf("rd1=%g rd2=%g \n",rd1[i],rd2[i]);
      return;
}

static void no3()
{
      int        i;
      float      rs10[100],rs02[100],rsx[100];
      double     rd10[100],rd02[100];
      for(i=0;i<100;i++) rsx[i]=10.0;
      for(i=0;i<100;i++)
      {
        rs10[i]=pow(10.,rsx[i]);
        rs02[i]=pow( 2.,rsx[i]);
        rd10[i]=pow(10.,(double)(rsx[i]));
        rd02[i]=pow( 2.,(double)(rsx[i]));
      }
      for(i=0;i<100;i++)
      {

        if((rs10[i] - rd10[i]) <= -0.00001 && (rs10[i] - rd10[i]) >= 0.00001 ) goto lb_ng;
        if((rs02[i] - rd02[i]) <= -0.00001 && (rs02[i] - rd02[i]) >= 0.00001 ) goto lb_ng;
      }
 lb_ok:
      puts(" ***** no.3 => ok *****");
      return;
 lb_ng:
      puts(" ***** no.3 => ng *****");
      printf("i  =%d  \n",i);
      printf("rs10=%g rs02=%g \n",rs10[i],rs02[i]);
      printf("rd10=%g rd02=%g \n",rd10[i],rd02[i]);
      return;
}
