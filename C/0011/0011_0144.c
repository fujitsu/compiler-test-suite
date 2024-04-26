#include  <stdio.h>

int c = 1 ;
extern int f1(int i) ;
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

 printf("********** TEST START **********\n");

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


 printf("**********  TEST  END  **********\n");

}

int f1(int i)
{
  printf(" F1 --> %d\n",i);
  return i ;
}
