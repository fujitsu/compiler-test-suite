#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1{
      unsigned int  a :4;
      unsigned int  b :4;
};
struct tag2{
      unsigned int  c :4;
      unsigned int  d :4;
};
int main()
{
     struct tag1 *p,x;
     struct tag2 *q,y;

     p = &x;
     q = &y;
     p->a = 1;
     p->b = 5;
     q->c = 1;
     q->d = 5;
     if(p->b == q->d)
         printf(" test(no.1) ==> ok\n");
     else if(p->a == q->c)
         printf(" test(no.2) ==> ok\n");
     else
         printf(" test       ==> ng");
exit (0);
}
