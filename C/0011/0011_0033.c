#include  <stdio.h>

struct tag2
{
  int a;
} ;

struct tag3
{
  int b;
};

struct tag1
{
  struct tag2 s;
  struct tag3 t[5];
};

struct tag2 g1 = { { 6 } };
struct tag3 g2 = { { 7 } };

int c=4;
int main()
{
    static struct tag1 st1={ { 0 },
                              { 1,2,3,4,5 }
                           };
    struct tag1 st2;
    struct tag1 *p;

    st2=st1;
    p=&st1;
    p->s =       g1;
    p->t[3] =  g2;
    p->t[c] =  g2;

    if (p->s.a==6)
       printf ("***** ok *****\n");
    else
       printf ("***** ng *****\n");
    if (p->t[3].b==7)
       printf ("***** ok *****\n");
    else
       printf ("***** ng *****\n");
    if (p->t[c].b==7)
       printf ("***** ok *****\n");
    else
       printf ("***** ng *****\n");
}
