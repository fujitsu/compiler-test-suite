#include <stdio.h>
         struct s { int i; };
               int f (void)
{
                       struct s *p = 0, *q;
                       int j = 0;

       again:
                       q = p, p = &((struct s){ j++ });
                       if (j < 2) goto again;

                       return p == q && q->i == 1;
		     }
int main()
{
  printf("%d\n", f());
}

