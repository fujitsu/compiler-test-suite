#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int result (long int n);
int gro_vsd (long int n);
int gro_pnt (float *p1, float *p2, float *p3, float *p4, float *p5, long int n);
int gro_adr (long int sl1[], long int sl2[], long int sl3[], long int sl4[], long int sl5[], long int n);
int gro_var (long int n);


unsigned char      uc1[64],uc2[64],uc3[64],uc4[64],uc5[64] ;
         char      sc1[64],sc2[64],sc3[64],sc4[64],sc5[64] ;
unsigned short int us1[64],us2[64],us3[64],us4[64],us5[64] ;
         short int ss1[64],ss2[64],ss3[64],ss4[64],ss5[64] ;
unsigned long  int ul1[64],ul2[64],ul3[64],ul4[64],ul5[64] ;
         long  int sl1[64],sl2[64],sl3[64],sl4[64],sl5[64] ;
float              f1[64] ,f2[64] ,f3[64] ,f4[64] ,f5[64] ;
double             d1[64] ,d2[64] ,d3[64] ,d4[64] ,d5[64] ;
int main (void)
   {
   long int isize=64 ;
   gro_var(isize) ;
   gro_adr(sl1,sl2,sl3,sl4,sl5,isize) ;
   gro_pnt(&f1[0],&f2[0],&f3[0],&f4[0],&f5[0],isize) ;
   gro_vsd(isize) ;
   result(isize) ;
exit (0);
   }

int init (long int n, char flg)
   {
   long int i ;
   for(i=0;i<n;i++)
      {
      if(flg == 1)
         {
         uc1[i] = 'a' ;
         uc2[i] = 'b' ;
         uc3[i] = 'c' ;
         uc4[i] = 'd' ;
         uc5[i] = 'e' ;
         }
      if(flg == 2)
         {
         sc1[i] = '1' ;
         sc2[i] = '2' ;
         sc3[i] = '3' ;
         sc4[i] = '4' ;
         sc5[i] = '5' ;
         }
      if(flg == 3)
         {
         us1[i] = i ;
         us2[i] = i + 2 ;
         us3[i] = i + 3 ;
         us4[i] = i + 4 ;
         us5[i] = i + 5 ;
         }
      if(flg == 4)
         {
         ss1[i] = -i ;
         ss2[i] = -(i + 2) ;
         ss3[i] = -(i + 3) ;
         ss4[i] = -(i + 4) ;
         ss5[i] = -(i + 5) ;
         }
      if(flg == 5)
         {
         ul1[i] =  i + 1 ;
         ul2[i] = (i + 1) * 2 ;
         ul3[i] = (i + 1) * 3 ;
         ul4[i] = (i + 1) * 4 ;
         ul5[i] = (i + 1) * 5 ;
         }
      if(flg == 6)
         {
         sl1[i] = -(i + 1) ;
         sl2[i] = -(i + 1) * 2 ;
         sl3[i] = -(i + 1) * 3 ;
         sl4[i] = -(i + 1) * 4 ;
         sl5[i] = -(i + 1) * 5 ;
         }
      if(flg == 7)
         {
         f1[i] = (float)(i + 1) / 2.0 ;
         f2[i] = (float)(i + 1) / 3.0 ;
         f3[i] = (float)(i + 1) / 4.0 ;
         f4[i] = (float)(i + 1) / 5.0 ;
         f5[i] = (float)(i + 1) / 6.0 ;
         }
      if(flg == 8)
         {
         d1[i] = (double)(i + 1) / 2.0 ;
         d2[i] = (double)(i + 1) / 3.0 ;
         d3[i] = (double)(i + 1) / 4.0 ;
         d4[i] = (double)(i + 1) / 5.0 ;
         d5[i] = (double)(i + 1) / 6.0 ;
         }
      }
   return 0;
   }

int gro_var (long int n)
   {
   long int i ;
   init(n,8) ;
   for(i=0;i<n;i++)
      {
      d1[i] = d1[i] + d2[i] ;
      d2[i] = d2[i] + d3[i] ;
      d3[i] = d3[i] + d4[i] ;
      d4[i] = d4[i] + d5[i] ;
      d5[i] = d5[i] + d1[i] ;
      }
   for(i=1;i<n;i++)
      {
      d1[i] = d1[i-1] + d2[i-1] ;
      d2[i] = d2[i-1] + d3[i-1] ;
      d3[i] = d3[i-1] + d4[i-1] ;
      d4[i] = d4[i-1] + d5[i-1] ;
      d5[i] = d5[i-1] + d1[i-1] ;
      }
   for(i=0;i<n-1;i++)
      {
      d1[i] = d1[i+1] + d2[i+1] ;
      d2[i] = d2[i+1] + d3[i+1] ;
      d3[i] = d3[i+1] + d4[i+1] ;
      d4[i] = d4[i+1] + d5[i+1] ;
      d5[i] = d5[i+1] + d1[i+1] ;
      if(fabs(d1[i]) > 999999.99) d1[i] /= 1000000.0 ;
      if(fabs(d2[i]) > 999999.99) d2[i] /= 1000000.0 ;
      if(fabs(d3[i]) > 999999.99) d3[i] /= 1000000.0 ;
      if(fabs(d4[i]) > 999999.99) d4[i] /= 1000000.0 ;
      if(fabs(d5[i]) > 999999.99) d5[i] /= 1000000.0 ;
      }
   return 0;
   }

int gro_adr (long int sl1[], long int sl2[], long int sl3[], long int sl4[], long int sl5[], long int n)
   {
   long int i,k,max,j ;
   init(n,6) ;
   k = 0 ;
   for(j=0;j<5;j++)
   {
   for(i=0;i<n-1;i+=2)
      {
      sl1[i] = sl2[n-1] - sl3[i+1] ;
      sl2[i] = sl4[n-1] - sl5[i+1] ;
      if(sl1[i] < sl2[i])
         {
         sl3[k] = sl4[k] - sl5[k] ;
         sl4[k] = sl5[k] - sl3[k] ;
         sl5[k] = sl3[k] - sl4[k] ;
         k = k + 1 ;
         }
      }
   max = 0 ;
   for(i=0;i<n;i++)
      {
      if(sl1[i] > max) max = sl1[i] ;
      if(sl2[i] > max) max = sl2[i] ;
      if(sl3[i] > max) max = sl3[i] ;
      if(sl4[i] > max) max = sl4[i] ;
      if(sl5[i] > max) max = sl5[i] ;
      sl1[i] = max ;
      }
   }
   return 0;
   }

int gro_pnt (float *p1, float *p2, float *p3, float *p4, float *p5, long int n)
   {
   long int i,j ;
   float    min ;
   init(n,7) ;
   for(j=0;j<5;j++) {
   for(i=0;i<n;i++)
      {
      *(p1+i) = *(p1+i) - *(p2+i) ;
      *(p2+i) = *(p2+i) - *(p3+i) ;
      *(p3+i) = *(p3+i) - *(p4+i) ;
      *(p4+i) = *(p4+i) - *(p5+i) ;
      *(p5+i) = *(p5+i) - *(p1+i) ;
      }
   min = 999999.9 ;
   for(i=0;i<n;i++)
      {
      if(*(p1+i) < min) min = *(p1+i) ;
      if(*(p2+i) < min) min = *(p2+i) ;
      if(*(p3+i) < min) min = *(p3+i) ;
      if(*(p4+i) < min) min = *(p4+i) ;
      if(*(p5+i) < min) min = *(p5+i) ;
      *(p1+i) = min ;
      }}
   return 0;
   }

int gro_vsd (long int n)
   {
   long int i,j ;
   unsigned long  int tmp1 ;
   unsigned short int tmp2 ;
            short int tmp3 ;
   unsigned char      tmp4 ;
            char      tmp5 ;
   init(n,1) ;
   init(n,2) ;
   init(n,3) ;
   init(n,4) ;
   init(n,5) ;
   for(j=0;j<n-1;j++) {
   for(i=j+1;i<n;i++)
      {
      if(ul1[j] < ul1[i])
         {
         tmp1  = ul1[j] ;
         ul1[j] = ul1[i] ;
         ul1[i] = tmp1  ;
         }
      if(ul2[j] < ul2[i])
         {
         tmp1   = ul2[j] ;
         ul2[j] = ul2[i] ;
         ul2[i] = tmp1  ;
         }
      if(ul3[j] < ul3[i])
         {
         tmp1   = ul3[j] ;
         ul3[j] = ul3[i] ;
         ul3[i] = tmp1  ;
         }
      if(ul4[j] < ul4[i])
         {
         tmp1   = ul4[j] ;
         ul4[j] = ul4[i] ;
         ul4[i] = tmp1  ;
         }
      if(ul5[j] < ul5[i])
         {
         tmp1   = ul5[j] ;
         ul5[j] = ul5[i] ;
         ul5[i] = tmp1  ;
         }
      }
   for(i=j+1;i<n;i++)
      {
      if(us1[j] < us1[i])
         {
         tmp2   = us1[j] ;
         us1[j] = us1[i] ;
         us1[i] = tmp2  ;
         }
      if(us2[j] < us2[i])
         {
         tmp2   = us2[j] ;
         us2[j] = us2[i] ;
         us2[i] = tmp2  ;
         }
      if(us3[j] < us3[i])
         {
         tmp2   = us3[j] ;
         us3[j] = us3[i] ;
         us3[i] = tmp2  ;
         }
      if(us4[j] < us4[i])
         {
         tmp2   = us4[j] ;
         us4[j] = us4[i] ;
         us4[i] = tmp2  ;
         }
      if(us5[j] < us5[i])
         {
         tmp2   = us5[j] ;
         us5[j] = us5[i] ;
         us5[i] = tmp2  ;
         }
      }
   for(i=j+1;i<n;i++)
      {
      if(ss1[j] < ss1[i])
         {
         tmp3   = ss1[j] ;
         ss1[j] = ss1[i] ;
         ss1[i] = tmp3  ;
         tmp3   = ss2[j] ;
         ss2[j] = ss2[i] ;
         ss2[i] = tmp3  ;
         tmp3   = ss3[j] ;
         ss3[j] = ss3[i] ;
         ss3[i] = tmp3  ;
         tmp3   = ss4[j] ;
         ss4[j] = ss4[i] ;
         ss4[i] = tmp3  ;
         tmp3   = ss5[j] ;
         ss5[j] = ss5[i] ;
         ss5[i] = tmp3  ;
         }
      if(uc1[j] < uc1[i])
         {
         tmp4   = uc1[j] ;
         uc1[j] = uc1[i] ;
         uc1[i] = tmp4  ;
         tmp4   = uc2[j] ;
         uc2[j] = uc2[i] ;
         uc2[i] = tmp4  ;
         tmp4   = uc3[j] ;
         uc3[j] = uc3[i] ;
         uc3[i] = tmp4  ;
         tmp4   = uc4[j] ;
         uc4[j] = uc4[i] ;
         uc4[i] = tmp4  ;
         tmp4   = uc5[j] ;
         uc5[j] = uc5[i] ;
         uc5[i] = tmp4  ;
         }
      if(sc1[j] < sc1[i])
         {
         tmp5   = sc1[j] ;
         sc1[j] = sc1[i] ;
         sc1[i] = tmp5  ;
         tmp5   = sc2[j] ;
         sc2[j] = sc2[i] ;
         sc2[i] = tmp5  ;
         tmp5   = sc3[j] ;
         sc3[j] = sc3[i] ;
         sc3[i] = tmp5  ;
         tmp5   = sc4[j] ;
         sc4[j] = sc4[i] ;
         sc4[i] = tmp5  ;
         tmp5   = sc5[j] ;
         sc5[j] = sc5[i] ;
         sc5[i] = tmp5  ;
         }
      }
      }
   return 0;
   }

int result (long int n)
   {
   long int i ;
   printf("us1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us1[i],us1[i+1],us1[i+2],us1[i+3],
         us1[i+4],us1[i+5],us1[i+6],us1[i+7]) ;
   printf("us2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us2[i],us2[i+1],us2[i+2],us2[i+3],
         us2[i+4],us2[i+5],us2[i+6],us2[i+7]) ;
   printf("us3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us3[i],us3[i+1],us3[i+2],us3[i+3],
         us3[i+4],us3[i+5],us3[i+6],us3[i+7]) ;
   printf("us4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us4[i],us4[i+1],us4[i+2],us4[i+3],
         us4[i+4],us4[i+5],us4[i+6],us4[i+7]) ;
   printf("us5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us5[i],us5[i+1],us5[i+2],us5[i+3],
         us5[i+4],us5[i+5],us5[i+6],us5[i+7]) ;
   printf("ss1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss1[i],ss1[i+1],ss1[i+2],ss1[i+3],
         ss1[i+4],ss1[i+5],ss1[i+6],ss1[i+7]) ;
   printf("ss2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss2[i],ss2[i+1],ss2[i+2],ss2[i+3],
         ss2[i+4],ss2[i+5],ss2[i+6],ss2[i+7]) ;
   printf("ss3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss3[i],ss3[i+1],ss3[i+2],ss3[i+3],
         ss3[i+4],ss3[i+5],ss3[i+6],ss3[i+7]) ;
   printf("ss4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss4[i],ss4[i+1],ss4[i+2],ss4[i+3],
         ss4[i+4],ss4[i+5],ss4[i+6],ss4[i+7]) ;
   printf("ss5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss5[i],ss5[i+1],ss5[i+2],ss5[i+3],
         ss5[i+4],ss5[i+5],ss5[i+6],ss5[i+7]) ;
   printf("ul1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul1[i],ul1[i+1],ul1[i+2],ul1[i+3],
         ul1[i+4],ul1[i+5],ul1[i+6],ul1[i+7]) ;
   printf("ul2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul2[i],ul2[i+1],ul2[i+2],ul2[i+3],
         ul2[i+4],ul2[i+5],ul2[i+6],ul2[i+7]) ;
   printf("ul3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul3[i],ul3[i+1],ul3[i+2],ul3[i+3],
         ul3[i+4],ul3[i+5],ul3[i+6],ul3[i+7]) ;
   printf("ul4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul4[i],ul4[i+1],ul4[i+2],ul4[i+3],
         ul4[i+4],ul4[i+5],ul4[i+6],ul4[i+7]) ;
   printf("ul5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul5[i],ul5[i+1],ul5[i+2],ul5[i+3],
         ul5[i+4],ul5[i+5],ul5[i+6],ul5[i+7]) ;
   printf("sl1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl1[i],sl1[i+1],sl1[i+2],sl1[i+3],
         sl1[i+4],sl1[i+5],sl1[i+6],sl1[i+7]) ;
   printf("sl2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl2[i],sl2[i+1],sl2[i+2],sl2[i+3],
         sl2[i+4],sl2[i+5],sl2[i+6],sl2[i+7]) ;
   printf("sl3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl3[i],sl3[i+1],sl3[i+2],sl3[i+3],
         sl3[i+4],sl3[i+5],sl3[i+6],sl3[i+7]) ;
   printf("sl4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl4[i],sl4[i+1],sl4[i+2],sl4[i+3],
         sl4[i+4],sl4[i+5],sl4[i+6],sl4[i+7]) ;
   printf("sl5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl5[i],sl5[i+1],sl5[i+2],sl5[i+3],
         sl5[i+4],sl5[i+5],sl5[i+6],sl5[i+7]) ;
   printf("f1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f1[i],f1[i+1],f1[i+2],f1[i+3],
         f1[i+4],f1[i+5],f1[i+6],f1[i+7]) ;
   printf("f2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f2[i],f2[i+1],f2[i+2],f2[i+3],
         f2[i+4],f2[i+5],f2[i+6],f2[i+7]) ;
   printf("f3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f3[i],f3[i+1],f3[i+2],f3[i+3],
         f3[i+4],f3[i+5],f3[i+6],f3[i+7]) ;
   printf("f4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f4[i],f4[i+1],f4[i+2],f4[i+3],
         f4[i+4],f4[i+5],f4[i+6],f4[i+7]) ;
   printf("f5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f5[i],f5[i+1],f5[i+2],f5[i+3],
         f5[i+4],f5[i+5],f5[i+6],f5[i+7]) ;
   printf("d1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d1[i],d1[i+1],d1[i+2],d1[i+3],
         d1[i+4],d1[i+5],d1[i+6],d1[i+7]) ;
   printf("d2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d2[i],d2[i+1],d2[i+2],d2[i+3],
         d2[i+4],d2[i+5],d2[i+6],d2[i+7]) ;
   printf("d3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d3[i],d3[i+1],d3[i+2],d3[i+3],
         d3[i+4],d3[i+5],d3[i+6],d3[i+7]) ;
   printf("d4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d4[i],d4[i+1],d4[i+2],d4[i+3],
         d4[i+4],d4[i+5],d4[i+6],d4[i+7]) ;
   printf("d5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d5[i],d5[i+1],d5[i+2],d5[i+3],
         d5[i+4],d5[i+5],d5[i+6],d5[i+7]) ;
   return 0;
   }
