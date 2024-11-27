#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


#define   cnst  1
int main()
 {
     static int    a[]={5,6,7,8,9,10}            ;
     char    f(),o=1                              ;
     int     i,c,p,m=1,n=1                    ;


     for(i=0;i<=5;++i)
     {

         switch (a[i])    {

             case 4+sizeof(f()):

                    printf(" *** \n");
                    break                                         ;

             case 2+sizeof(++m):

                    printf(" *** \n");
                    break                                         ;

             case 3+sizeof(--n):

                    printf(" *** \n");
                    break                                         ;

             case 4+sizeof(p=(int)o):

                    printf(" *** \n");
                    break                                         ;

             case 5+sizeof(o,p):

                    printf(" *** \n");
                    break                                         ;

             case 9+cnst       :

                    printf(" *** \n");
                    break                                         ;

             default:

                  printf(" *** \n",i+1 );

                       }
      }
exit (0);
 }
