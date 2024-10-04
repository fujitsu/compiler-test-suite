#include <stdio.h>
int main()
{
     static int  x = 7          ;
     static int  *a= &x         ;
     static int **aa= &a        ;

     static int  ar[2]        ;
     int *ar1 = ar              ;

     struct tag {
                int   in1       ;
                char  ch1       ;
                }              ;

     static struct tag  mm      ;
     static struct tag *nn = &mm;

     union  aaa {
                int   in5       ;
                char  ch5       ;
                }              ;

     static union  aaa  xx      ;
     static union  aaa *zz = &xx;

     static int  in2=9, *in3,*po1;

      in3 = &in2                ;

      po1 = (int *)&in2         ;


     if ( ar1 == &ar[0]   &&   ar1+1 == &ar[1]  )

           printf(" ***  TEST-1  OK  ARRAY  -<>  ***\n");
        else
           printf(" ***  TEST-1  NG  ARRAY  -<>  ***\n");


     if ( &(mm.in1) == &(nn->in1)   &&   &(mm.ch1) == &(nn->ch1)  )
        {
           printf(" ***  TEST-2  OK  STRUCT - .  ***\n");
           printf(" ***  TEST-3  OK  STRUCT -->  ***\n");
        }
        else
        {
           printf(" ***  TEST-2  NG  STRUCT - .  ***\n");
           printf(" ***  TEST-3  NG  STRUCT -->  ***\n");
        }


     if ( &(xx.in5) == &(zz->in5)   &&   &(xx.ch5) == &(zz->ch5)  )
        {
           printf(" ***  TEST-4  OK  UNION  - .  ***\n");
           printf(" ***  TEST-5  OK  UNION  -->  ***\n");
        }
        else
        {
           printf(" ***  TEST-4  NG  UNION  - .  ***\n");
           printf(" ***  TEST-5  NG  UNION  -->  ***\n");
        }


     if ( *in3 == 9  )

           printf(" ***  TEST-6  OK  ADDRESS- &  ***\n");
        else
           printf(" ***  TEST-6  NG  ADDRESS- &  ***\n");


     if ( *aa == &x )

           printf(" ***  TEST-7  OK  POINTER- *  ***\n");
        else
           printf(" ***  TEST-7  NG  POINTER- *  ***\n");


     if ( *po1 == 9  )

           printf(" ***  TEST-8  OK   - *  ***\n");
        else
           printf(" ***  TEST-8  NG   - *  ***\n");



}
