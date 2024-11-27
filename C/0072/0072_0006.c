#include <stdlib.h>
#include <stdio.h>
#include <math.h>



struct st1 {
  unsigned char  x[64];
}uc1,uc2,uc3,uc4,uc5;

struct st2 {
  char x[64];
}sc1,sc2,sc3,sc4,sc5;

struct st3 {
  unsigned short int x[64];
}us1,us2,us3,us4,us5;

struct st4 {
  short int x[64];
}ss1,ss2,ss3,ss4,ss5;

struct st5 {
  unsigned long int x[64];
}ul1,ul2,ul3,ul4,ul5;

struct st6 {
  long int x[64];
}sl1,sl2,sl3,sl4,sl5;

struct st7 {
  float x[64];
}f1,f2,f3,f4,f5;

struct st8 {
  double x[64];
}d1,d2,d3,d4,d5;

int result(long int n);
int gro_vsd(long int n);
int gro_pnt(float *p1, float *p2, float *p3, float *p4, float *p5, long int n);
int gro_adr(struct st6 *sl1, struct st6 *sl2, struct st6 *sl3, struct st6 *sl4, struct st6 *sl5, long int n);
int gro_var(long int n);
int main()
   {
   long int isize=64 ;
   gro_var(isize) ;
   gro_adr(&sl1,&sl2,&sl3,&sl4,&sl5,isize) ;
   gro_pnt(&f1.x[0],&f2.x[0],&f3.x[0],&f4.x[0],&f5.x[0],isize) ;
   gro_vsd(isize) ;
   result(isize) ;
exit (0);
   }

int init(n,flg)
char     flg ;
long int n ;
   {
   long int i ;
   for(i=0;i<n;i++)
      {
      if(flg == 1)
         {
         uc1.x[i] = 'a' ;
         uc2.x[i] = 'b' ;
         uc3.x[i] = 'c' ;
         uc4.x[i] = 'd' ;
         uc5.x[i] = 'e' ;
         }
      if(flg == 2)
         {
         sc1.x[i] = '1' ;
         sc2.x[i] = '2' ;
         sc3.x[i] = '3' ;
         sc4.x[i] = '4' ;
         sc5.x[i] = '5' ;
         }
      if(flg == 3)
         {
         us1.x[i] = i ;
         us2.x[i] = i + 2 ;
         us3.x[i] = i + 3 ;
         us4.x[i] = i + 4 ;
         us5.x[i] = i + 5 ;
         }
      if(flg == 4)
         {
         ss1.x[i] = -i ;
         ss2.x[i] = -(i + 2) ;
         ss3.x[i] = -(i + 3) ;
         ss4.x[i] = -(i + 4) ;
         ss5.x[i] = -(i + 5) ;
         }
      if(flg == 5)
         {
         ul1.x[i] =  i + 1 ;
         ul2.x[i] = (i + 1) * 2 ;
         ul3.x[i] = (i + 1) * 3 ;
         ul4.x[i] = (i + 1) * 4 ;
         ul5.x[i] = (i + 1) * 5 ;
         }
      if(flg == 6)
         {
         sl1.x[i] = -(i + 1) ;
         sl2.x[i] = -(i + 1) * 2 ;
         sl3.x[i] = -(i + 1) * 3 ;
         sl4.x[i] = -(i + 1) * 4 ;
         sl5.x[i] = -(i + 1) * 5 ;
         }
      if(flg == 7)
         {
         f1.x[i] = (float)(i + 1) / 2.0 ;
         f2.x[i] = (float)(i + 1) / 3.0 ;
         f3.x[i] = (float)(i + 1) / 4.0 ;
         f4.x[i] = (float)(i + 1) / 5.0 ;
         f5.x[i] = (float)(i + 1) / 6.0 ;
         }
      if(flg == 8)
         {
         d1.x[i] = (double)(i + 1) / 2.0 ;
         d2.x[i] = (double)(i + 1) / 3.0 ;
         d3.x[i] = (double)(i + 1) / 4.0 ;
         d4.x[i] = (double)(i + 1) / 5.0 ;
         d5.x[i] = (double)(i + 1) / 6.0 ;
         }
      }
   return 0;
   }

int gro_var(n)
long int n ;
   {
   long int i ;
   init(n,8) ;
   for(i=0;i<n;i++)
      {
      d1.x[i] = d1.x[i] + d2.x[i] ;
      d2.x[i] = d2.x[i] + d3.x[i] ;
      d3.x[i] = d3.x[i] + d4.x[i] ;
      d4.x[i] = d4.x[i] + d5.x[i] ;
      d5.x[i] = d5.x[i] + d1.x[i] ;
      }
   for(i=1;i<n;i++)
      {
      d1.x[i] = d1.x[i-1] + d2.x[i-1] ;
      d2.x[i] = d2.x[i-1] + d3.x[i-1] ;
      d3.x[i] = d3.x[i-1] + d4.x[i-1] ;
      d4.x[i] = d4.x[i-1] + d5.x[i-1] ;
      d5.x[i] = d5.x[i-1] + d1.x[i-1] ;
      }
   for(i=0;i<n-1;i++)
      {
      d1.x[i] = d1.x[i+1] + d2.x[i+1] ;
      d2.x[i] = d2.x[i+1] + d3.x[i+1] ;
      d3.x[i] = d3.x[i+1] + d4.x[i+1] ;
      d4.x[i] = d4.x[i+1] + d5.x[i+1] ;
      d5.x[i] = d5.x[i+1] + d1.x[i+1] ;
      if(fabs(d1.x[i]) > 999999.99) d1.x[i] /= 1000000.0 ;
      if(fabs(d2.x[i]) > 999999.99) d2.x[i] /= 1000000.0 ;
      if(fabs(d3.x[i]) > 999999.99) d3.x[i] /= 1000000.0 ;
      if(fabs(d4.x[i]) > 999999.99) d4.x[i] /= 1000000.0 ;
      if(fabs(d5.x[i]) > 999999.99) d5.x[i] /= 1000000.0 ;
      }
   return 0;
   }

int gro_adr(sl1,sl2,sl3,sl4,sl5,n)
struct st6 *sl1,*sl2,*sl3,*sl4,*sl5;
long int n ;
   {
   long int i,k,max,j ;
   init(n,6) ;
   k = 0 ;
   for(j=0;j<5;j++)
   {
   for(i=0;i<n-1;i+=2)
      {
      sl1->x[i] = sl2->x[n-1] - sl3->x[i+1] ;
      sl2->x[i] = sl4->x[n-1] - sl5->x[i+1] ;
      if(sl1->x[i] < sl2->x[i])
         {
         sl3->x[k] = sl4->x[k] - sl5->x[k] ;
         sl4->x[k] = sl5->x[k] - sl3->x[k] ;
         sl5->x[k] = sl3->x[k] - sl4->x[k] ;
         k = k + 1 ;
         }
      }
   max = 0 ;
   for(i=0;i<n;i++)
      {
      if(sl1->x[i] > max) max = sl1->x[i] ;
      if(sl2->x[i] > max) max = sl2->x[i] ;
      if(sl3->x[i] > max) max = sl3->x[i] ;
      if(sl4->x[i] > max) max = sl4->x[i] ;
      if(sl5->x[i] > max) max = sl5->x[i] ;
      sl1->x[i] = max ;
      }
   }
   return 0;
   }

int gro_pnt(p1,p2,p3,p4,p5,n)
long int n ;
float    *p1,*p2,*p3,*p4,*p5 ;
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

int gro_vsd(n)
long int n ;
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
      if(ul1.x[j] < ul1.x[i])
         {
         tmp1  = ul1.x[j] ;
         ul1.x[j] = ul1.x[i] ;
         ul1.x[i] = tmp1  ;
         }
      if(ul2.x[j] < ul2.x[i])
         {
         tmp1   = ul2.x[j] ;
         ul2.x[j] = ul2.x[i] ;
         ul2.x[i] = tmp1  ;
         }
      if(ul3.x[j] < ul3.x[i])
         {
         tmp1   = ul3.x[j] ;
         ul3.x[j] = ul3.x[i] ;
         ul3.x[i] = tmp1  ;
         }
      if(ul4.x[j] < ul4.x[i])
         {
         tmp1   = ul4.x[j] ;
         ul4.x[j] = ul4.x[i] ;
         ul4.x[i] = tmp1  ;
         }
      if(ul5.x[j] < ul5.x[i])
         {
         tmp1   = ul5.x[j] ;
         ul5.x[j] = ul5.x[i] ;
         ul5.x[i] = tmp1  ;
         }
      }
   for(i=j+1;i<n;i++)
      {
      if(us1.x[j] < us1.x[i])
         {
         tmp2   = us1.x[j] ;
         us1.x[j] = us1.x[i] ;
         us1.x[i] = tmp2  ;
         }
      if(us2.x[j] < us2.x[i])
         {
         tmp2   = us2.x[j] ;
         us2.x[j] = us2.x[i] ;
         us2.x[i] = tmp2  ;
         }
      if(us3.x[j] < us3.x[i])
         {
         tmp2   = us3.x[j] ;
         us3.x[j] = us3.x[i] ;
         us3.x[i] = tmp2  ;
         }
      if(us4.x[j] < us4.x[i])
         {
         tmp2   = us4.x[j] ;
         us4.x[j] = us4.x[i] ;
         us4.x[i] = tmp2  ;
         }
      if(us5.x[j] < us5.x[i])
         {
         tmp2   = us5.x[j] ;
         us5.x[j] = us5.x[i] ;
         us5.x[i] = tmp2  ;
         }
      }
   for(i=j+1;i<n;i++)
      {
      if(ss1.x[j] < ss1.x[i])
         {
         tmp3   = ss1.x[j] ;
         ss1.x[j] = ss1.x[i] ;
         ss1.x[i] = tmp3  ;
         tmp3   = ss2.x[j] ;
         ss2.x[j] = ss2.x[i] ;
         ss2.x[i] = tmp3  ;
         tmp3   = ss3.x[j] ;
         ss3.x[j] = ss3.x[i] ;
         ss3.x[i] = tmp3  ;
         tmp3   = ss4.x[j] ;
         ss4.x[j] = ss4.x[i] ;
         ss4.x[i] = tmp3  ;
         tmp3   = ss5.x[j] ;
         ss5.x[j] = ss5.x[i] ;
         ss5.x[i] = tmp3  ;
         }
      if(uc1.x[j] < uc1.x[i])
         {
         tmp4   = uc1.x[j] ;
         uc1.x[j] = uc1.x[i] ;
         uc1.x[i] = tmp4  ;
         tmp4   = uc2.x[j] ;
         uc2.x[j] = uc2.x[i] ;
         uc2.x[i] = tmp4  ;
         tmp4   = uc3.x[j] ;
         uc3.x[j] = uc3.x[i] ;
         uc3.x[i] = tmp4  ;
         tmp4   = uc4.x[j] ;
         uc4.x[j] = uc4.x[i] ;
         uc4.x[i] = tmp4  ;
         tmp4   = uc5.x[j] ;
         uc5.x[j] = uc5.x[i] ;
         uc5.x[i] = tmp4  ;
         }
      if(sc1.x[j] < sc1.x[i])
         {
         tmp5   = sc1.x[j] ;
         sc1.x[j] = sc1.x[i] ;
         sc1.x[i] = tmp5  ;
         tmp5   = sc2.x[j] ;
         sc2.x[j] = sc2.x[i] ;
         sc2.x[i] = tmp5  ;
         tmp5   = sc3.x[j] ;
         sc3.x[j] = sc3.x[i] ;
         sc3.x[i] = tmp5  ;
         tmp5   = sc4.x[j] ;
         sc4.x[j] = sc4.x[i] ;
         sc4.x[i] = tmp5  ;
         tmp5   = sc5.x[j] ;
         sc5.x[j] = sc5.x[i] ;
         sc5.x[i] = tmp5  ;
         }
      }
      }
   return 0;
   }

int result(n)
long int n ;
   {
   long int i ;
   printf("us1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us1.x[i],us1.x[i+1],us1.x[i+2],us1.x[i+3],
         us1.x[i+4],us1.x[i+5],us1.x[i+6],us1.x[i+7]) ;
   printf("us2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us2.x[i],us2.x[i+1],us2.x[i+2],us2.x[i+3],
         us2.x[i+4],us2.x[i+5],us2.x[i+6],us2.x[i+7]) ;
   printf("us3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us3.x[i],us3.x[i+1],us3.x[i+2],us3.x[i+3],
         us3.x[i+4],us3.x[i+5],us3.x[i+6],us3.x[i+7]) ;
   printf("us4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us4.x[i],us4.x[i+1],us4.x[i+2],us4.x[i+3],
         us4.x[i+4],us4.x[i+5],us4.x[i+6],us4.x[i+7]) ;
   printf("us5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%u  %u  %u  %u  %u  %u  %u  %u\n",
         us5.x[i],us5.x[i+1],us5.x[i+2],us5.x[i+3],
         us5.x[i+4],us5.x[i+5],us5.x[i+6],us5.x[i+7]) ;
   printf("ss1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss1.x[i],ss1.x[i+1],ss1.x[i+2],ss1.x[i+3],
         ss1.x[i+4],ss1.x[i+5],ss1.x[i+6],ss1.x[i+7]) ;
   printf("ss2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss2.x[i],ss2.x[i+1],ss2.x[i+2],ss2.x[i+3],
         ss2.x[i+4],ss2.x[i+5],ss2.x[i+6],ss2.x[i+7]) ;
   printf("ss3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss3.x[i],ss3.x[i+1],ss3.x[i+2],ss3.x[i+3],
         ss3.x[i+4],ss3.x[i+5],ss3.x[i+6],ss3.x[i+7]) ;
   printf("ss4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss4.x[i],ss4.x[i+1],ss4.x[i+2],ss4.x[i+3],
         ss4.x[i+4],ss4.x[i+5],ss4.x[i+6],ss4.x[i+7]) ;
   printf("ss5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%d  %d  %d  %d  %d  %d  %d  %d\n",
         ss5.x[i],ss5.x[i+1],ss5.x[i+2],ss5.x[i+3],
         ss5.x[i+4],ss5.x[i+5],ss5.x[i+6],ss5.x[i+7]) ;
   printf("ul1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul1.x[i],ul1.x[i+1],ul1.x[i+2],ul1.x[i+3],
         ul1.x[i+4],ul1.x[i+5],ul1.x[i+6],ul1.x[i+7]) ;
   printf("ul2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul2.x[i],ul2.x[i+1],ul2.x[i+2],ul2.x[i+3],
         ul2.x[i+4],ul2.x[i+5],ul2.x[i+6],ul2.x[i+7]) ;
   printf("ul3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul3.x[i],ul3.x[i+1],ul3.x[i+2],ul3.x[i+3],
         ul3.x[i+4],ul3.x[i+5],ul3.x[i+6],ul3.x[i+7]) ;
   printf("ul4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul4.x[i],ul4.x[i+1],ul4.x[i+2],ul4.x[i+3],
         ul4.x[i+4],ul4.x[i+5],ul4.x[i+6],ul4.x[i+7]) ;
   printf("ul5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%lu  %lu  %lu  %lu  %lu  %lu  %lu  %lu\n",
         ul5.x[i],ul5.x[i+1],ul5.x[i+2],ul5.x[i+3],
         ul5.x[i+4],ul5.x[i+5],ul5.x[i+6],ul5.x[i+7]) ;
   printf("sl1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl1.x[i],sl1.x[i+1],sl1.x[i+2],sl1.x[i+3],
         sl1.x[i+4],sl1.x[i+5],sl1.x[i+6],sl1.x[i+7]) ;
   printf("sl2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl2.x[i],sl2.x[i+1],sl2.x[i+2],sl2.x[i+3],
         sl2.x[i+4],sl2.x[i+5],sl2.x[i+6],sl2.x[i+7]) ;
   printf("sl3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl3.x[i],sl3.x[i+1],sl3.x[i+2],sl3.x[i+3],
         sl3.x[i+4],sl3.x[i+5],sl3.x[i+6],sl3.x[i+7]) ;
   printf("sl4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl4.x[i],sl4.x[i+1],sl4.x[i+2],sl4.x[i+3],
         sl4.x[i+4],sl4.x[i+5],sl4.x[i+6],sl4.x[i+7]) ;
   printf("sl5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld\n",
         sl5.x[i],sl5.x[i+1],sl5.x[i+2],sl5.x[i+3],
         sl5.x[i+4],sl5.x[i+5],sl5.x[i+6],sl5.x[i+7]) ;
   printf("f1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f1.x[i],f1.x[i+1],f1.x[i+2],f1.x[i+3],
         f1.x[i+4],f1.x[i+5],f1.x[i+6],f1.x[i+7]) ;
   printf("f2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f2.x[i],f2.x[i+1],f2.x[i+2],f2.x[i+3],
         f2.x[i+4],f2.x[i+5],f2.x[i+6],f2.x[i+7]) ;
   printf("f3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f3.x[i],f3.x[i+1],f3.x[i+2],f3.x[i+3],
         f3.x[i+4],f3.x[i+5],f3.x[i+6],f3.x[i+7]) ;
   printf("f4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f4.x[i],f4.x[i+1],f4.x[i+2],f4.x[i+3],
         f4.x[i+4],f4.x[i+5],f4.x[i+6],f4.x[i+7]) ;
   printf("f5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%f  %f  %f  %f  %f  %f  %f  %f\n",
         f5.x[i],f5.x[i+1],f5.x[i+2],f5.x[i+3],
         f5.x[i+4],f5.x[i+5],f5.x[i+6],f5.x[i+7]) ;
   printf("d1[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d1.x[i],d1.x[i+1],d1.x[i+2],d1.x[i+3],
         d1.x[i+4],d1.x[i+5],d1.x[i+6],d1.x[i+7]) ;
   printf("d2[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d2.x[i],d2.x[i+1],d2.x[i+2],d2.x[i+3],
         d2.x[i+4],d2.x[i+5],d2.x[i+6],d2.x[i+7]) ;
   printf("d3[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d3.x[i],d3.x[i+1],d3.x[i+2],d3.x[i+3],
         d3.x[i+4],d3.x[i+5],d3.x[i+6],d3.x[i+7]) ;
   printf("d4[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d4.x[i],d4.x[i+1],d4.x[i+2],d4.x[i+3],
         d4.x[i+4],d4.x[i+5],d4.x[i+6],d4.x[i+7]) ;
   printf("d5[*] => \n") ;
   for(i=0;i<n;i = i + 8)
      printf("%g  %g  %g  %g  %g  %g  %g  %g\n",
         d5.x[i],d5.x[i+1],d5.x[i+2],d5.x[i+3],
         d5.x[i+4],d5.x[i+5],d5.x[i+6],d5.x[i+7]) ;
   return 0;
   }
