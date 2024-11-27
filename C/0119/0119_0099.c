#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int c = 1 ;
extern int f1() ;
struct {
       int (*a[5])() ;
       int *b[5] ;
       } x[5] = { { {f1,f1,f1,f1,f1},{&c,&c,&c,&c,&c}},
                      { {f1,f1,f1,f1,f1},{&c,&c,&c,&c,&c}},
                      { {f1,f1,f1,f1,f1},{&c,&c,&c,&c,&c}},
                      { {f1,f1,f1,f1,f1},{&c,&c,&c,&c,&c}},
                      { {f1,f1,f1,f1,f1},{&c,&c,&c,&c,&c}}} ;
int main()
{

 printf("********** SCPII16 TEST START **********\n");

 {
   int y = 0 ;
   int (*g)() ;
   int count = 0 ;

   while (count < 5)
   {
     g = x[count].a[count] ;
     y += (*g)(*(x[count].b[count])) ;
     count++ ;
   }

   if (y == 5)
     printf("********** O   K ***********************\n");
   else
     {
     printf("********** N   G ***********************\n");
     printf(" Y=%d\n",y);
     }
 }


 printf("********** SCPII16 TEST  END  **********\n");

exit (0);
}

int f1(i)
int i ;
{
  printf(" F1 --> %d\n",i);
  return i ;
}
