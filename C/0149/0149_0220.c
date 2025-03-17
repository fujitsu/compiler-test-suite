#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
    printf("*** CATEGORY TEST *** STARTED ***\n");
 
     {
     static struct  tag1 {
                           int     stia;
                           char    stca;
                         } st1 = { 10,100 };
 
     long  ia;
     struct tag1 *p, *q;
     q = &st1;
     ia = (long)q;
     p  = (struct tag1 *)ia;
     if(p->stia == 10)
         printf("*** CATEGORY-01 *** O     K ***\n");
     else
         printf("*** CATEGORY-01 **** N   G ****\n");
     }
     {
     static union   tag2 {
                           int     unia;
                           char    unca;
                         } un1 = { 10 };
 
     long  ib;
     union  tag2 *s, *t;
     t = &un1;
     ib = (long)t;
     s  = (union  tag2 *)ib;
     if(s->unia == 10)
         printf("*** CATEGORY-02 *** O     K ***\n");
     else
         printf("*** CATEGORY-02 **** N   G ****\n");
     }
     {
     }
exit (0);
}
