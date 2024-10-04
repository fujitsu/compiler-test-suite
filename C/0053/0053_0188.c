#include<stdio.h>
struct tag
{
  int a;
  int b;
} ;

void f1(register volatile const struct tag *,
        register const volatile struct tag *);
void f2(register volatile struct tag *);
void f3(register struct tag *);
void f4(volatile const struct tag *);
void f5(volatile struct tag);
void f6(struct tag);
int main()
{

    volatile const struct tag a = { 1,2 };
    const volatile struct tag b = { 3,4 };
    volatile struct tag c = { 1,2 };
    struct tag d = { 1,2 };

    f1(&a,&b);
    f2(&c);
    f3(&d);
    f4(&a);
    f5(c);
    f6(d);
}

void f1(register volatile const struct tag *a,
        register const volatile struct tag *b)
{
  if (a->a == 1 && a->b == 2)
      printf("***** \n");
    else
      printf("***** \n");

  if (b->a == 3 && b->b == 4)
      printf("***** \n");
    else
      printf("***** \n");
}

void f2(register volatile struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

void f3(register struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

void f4(volatile const struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

void f5(volatile struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

void f6(struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}

