#include  <stdio.h>

struct tag {
   int a;
};

struct tag st1 = { 3 };
struct tag st2[5] = { 0,1,2,3,4 };
struct tag st3[5] = { 0,1,2,3,4 };

struct tag2 {
   struct tag st5[5];
   struct tag st6[5]; } st4 = { { 0,1,2,3,4, },
                                    { 0,1,2,3,4, } };

int c = 3;
int main()
{
   struct tag2 *p;

   p=&st4;

   st2[c] = st1;
   if (st2[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");

   p->st5[c] = st1;
   if (p->st5[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");

   st2[c] = st3[c];
   if (st2[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");

   p->st5[c] = st3[c];
   if (p->st5[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");

   st3[c] = p->st5[c];
   if (st3[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");

   p->st5[c] = p->st6[c];
   if (p->st5[c].a==3)
      printf ("***** ok ****\n");
   else
      printf ("***** ng ****\n");
}
