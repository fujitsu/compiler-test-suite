#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

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

           printf(" *** \n");
        else
           printf(" *** \n");


     if ( &(mm.in1) == &(nn->in1)   &&   &(mm.ch1) == &(nn->ch1)  )
        {
           printf(" *** \n");
           printf(" *** \n");
        }
        else
        {
           printf(" *** \n");
           printf(" *** \n");
        }


     if ( &(xx.in5) == &(zz->in5)   &&   &(xx.ch5) == &(zz->ch5)  )
        {
           printf(" *** \n");
           printf(" *** \n");
        }
        else
        {
           printf(" *** \n");
           printf(" *** \n");
        }


     if ( *in3 == 9  )

           printf(" *** \n");
        else
           printf(" *** \n");


     if ( *aa == &x )

           printf(" *** \n");
        else
           printf(" *** \n");


     if ( *po1 == 9  )

           printf(" *** \n");
        else
           printf(" *** \n");



exit (0);
}
