#include  <stdio.h>
 
#ifdef __STDC__
   int bbb,*func1(int *),*ggg;
#else
   int bbb,*func1(),*ggg;
#endif
int main()
     {
        bbb=10 ;
        ggg=func1(&bbb) ;
        if(*ggg == 20)
          printf("***   OK  ***\n") ;
        else
          printf("***   NG  ***\n") ;
     }
#ifdef __STDC__
   int *func1(int *ddd)
#else
   int *func1(ddd)
   int *ddd;
#endif
  
     {
         struct  t1  {
            int **aaa[7][5][3]  ;
                     } ccc[4] ;
         *ddd = *ddd + 10 ;
         ccc[0].aaa[0][0][0] = &ddd ;
         ccc[3].aaa[6][4][2] = ccc[0].aaa[0][0][0] ;
         return(*ccc[3].aaa[6][4][2]) ;
     }
