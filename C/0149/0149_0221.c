#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
    printf("*** CATEGORY TEST *** STARTED ***\n");
 
     {
     struct  tag1 {
                    int     stia;
                    char    stca;
                  } ;
 
     struct tag1 st1;
     st1.stia = 10;
     st1.stca = 100;
     if(st1.stia == 10)
         printf("*** CATEGORY-01 *** O     K ***\n");
     else
         printf("*** CATEGORY-01 **** N   G ****\n");
     }
     {
     union   tag2 {
                    int     unia;
                    char    unca;
                  };
 
     union tag2 un2;
     un2.unia = 10;
     if(un2.unia == 10)
         printf("*** CATEGORY-02 *** O     K ***\n");
     else
         printf("*** CATEGORY-02 **** N   G ****\n");
     }
     {
     enum  tag3{ a=100, b, c, d=20, e, f, g };
     enum  tag3  en3;
     if(b == 101)
         printf("*** CATEGORY-03 *** O     K ***\n");
     else
         printf("*** CATEGORY-03 **** N   G ****\n");
     }
     {
     struct  tag4 {
                    int     stia;
                    char    stca;
                  } ;
 
     struct  tag4 static ststa;
     ststa.stia = 30;
     if(ststa.stia == 30)
         printf("*** CATEGORY-04 *** O     K ***\n");
     else
         printf("*** CATEGORY-04 **** N   G ****\n");
     }
     {
     union   tag5 {
                    int     unia;
                    char    unca;
                  };
 
     union  tag5  static unsta;
     unsta.unia = 25;
     if(unsta.unia == 25)
         printf("*** CATEGORY-05 *** O     K ***\n");
     else
         printf("*** CATEGORY-05 **** N   G ****\n");
     }
     {
     enum  tag6{ a=100, b, c, d=20, e, f, g };
     enum  tag6 static ensta;
     if(c == 102)
         printf("*** CATEGORY-06 *** O     K ***\n");
     else
         printf("*** CATEGORY-06 **** N   G ****\n");
     }
     {
     struct tag7 {
                   int  stia;
                   char stca;
                 };
     struct tag7 volatile stvoa ;
     stvoa.stia = 12;
     if(stvoa.stia == 12)
         printf("*** CATEGORY-07 *** O     K ***\n");
     else
         printf("*** CATEGORY-07 **** N   G ****\n");
     }
     {
     union  tag8 {
                   int  unia;
                   char unca;
                 };
     union  tag8 volatile unvoa ;
     unvoa.unia = 11;
     if(unvoa.unia == 11)
         printf("*** CATEGORY-08 *** O     K ***\n");
     else
         printf("*** CATEGORY-08 **** N   G ****\n");
     }
     {
     enum tag9 { a,s,d,f,g,h,j };
     enum tag9 volatile envoa;
     if(s == 1)
         printf("*** CATEGORY-09 *** O     K ***\n");
     else
         printf("*** CATEGORY-09 **** N   G ****\n");
     }
    printf("*** CATEGORY TEST *** ENDED ***\n");
exit (0);
}
