#include <stdio.h>

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

                    printf(" ***  TEST-1 OK  ***\n");
                    break                                         ;

             case 2+sizeof(++m):

                    printf(" ***  TEST-2 OK  ***\n");
                    break                                         ;

             case 3+sizeof(--n):

                    printf(" ***  TEST-3 OK  ***\n");
                    break                                         ;

             case 4+sizeof(p=(int)o):

                    printf(" ***  TEST-4 OK  ***\n");
                    break                                         ;

             case 5+sizeof(o,p):

                    printf(" ***  TEST-5 OK  ***\n");
                    break                                         ;

             case 9+cnst       :

                    printf(" ***  TEST-6 OK  ***\n");
                    break                                         ;

             default:

                  printf(" ***  TEST-%d NG  ***\n",i+1 );

                       }
      }
 }
