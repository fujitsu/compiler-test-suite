#include<stdio.h>
struct sttag { int a; int b; };
union  untag { int a; int b; };
enum   entag { emem0, emem1  };

int fun(void);
int main()
{
  printf("********** \n");
  {
    char a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 1l;

    (a);
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 1l;

    (a);
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 1;

    (a);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 1u;

    (a);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 1u;

    (a);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 1ul;

    (a);
    if (a == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 1u;

    (a);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[2] = { 1,2 },a;

    a = (vec)[0];
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*ptr = &val,a;

    a = *(ptr);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct sttag st = { 1,2 }; int a;

    a = (st).a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union untag un = { 1 }; int a;

    a = (un).a;
    if (a = 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum entag en1 = 0; int a;

    a = (en1);
    if (a == emem0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a;

    a = (fun)();
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int fun(void)
{
  return (1);
}
