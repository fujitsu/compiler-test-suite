#include <stdio.h>
union eee {
  int i;
  int j;
};

struct ddd {
  int k;
  union eee s;
};

void init_d(f)
  struct ddd *f;
{
  f->k=5;
  f->s.i=4;
  f->s.j=3;
}
int main()
{
  struct ddd f;
  int    *s;
  void   *t;
  int     i;

  init_d(&f);

  t=(void *)&f.s;
  for (i=1; i<10; i++)
    s=(int *)&(*(union eee *)t).i;

  printf("%d\n",*s);
}
