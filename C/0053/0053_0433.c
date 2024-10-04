#include<stdio.h>
int main()
{
    printf("*** \n");

     {
     static struct  tag1 {
                           int     stia;
                           char    stca;
                         } st1 = { 10,100 };

#if defined(__x86_64__) || defined(__aarch64__)
     long int  ia;
     struct tag1 *p, *q;
     q = &st1;
     ia = (long int)q;
     p  = (struct tag1 *)ia;
#else
     int  ia;
     struct tag1 *p, *q;
     q = &st1;
     ia = (int)q;
     p  = (struct tag1 *)ia;
#endif
     if(p->stia == 10)
         printf("*** \n");
     }
     {
     static union   tag2 {
                           int     unia;
                           char    unca;
                         } un1 = { 10 };

#if defined(__x86_64__) || defined(__aarch64__)
     long int  ib;
     union  tag2 *s, *t;
     t = &un1;
     ib = (long int)t;
     s  = (union  tag2 *)ib;
#else
     int  ib;
     union  tag2 *s, *t;
     t = &un1;
     ib = (int)t;
     s  = (union  tag2 *)ib;
#endif
     if(s->unia == 10)
         printf("*** \n");
     }
     {
     }
    printf("*** \n");
}
