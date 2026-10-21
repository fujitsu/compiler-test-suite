#include <stdio.h>

struct u8 {
#if defined(__x86_64__) || defined(__aarch64__)
  unsigned  int low;
  unsigned  int upp;
#else
  unsigned long int low;
  unsigned long int upp;
#endif
};

struct su {
  unsigned short int low;
  unsigned short int upp;
};

static void sub1(struct u8 *a, struct u8 *b);
static void sub2(unsigned int *a, unsigned int *b);
int main()
{
  struct u8 a, b;

  a.upp = 0x10000000;
  a.low = 0x00000000;

  sub1(&a, &b);
  if (    b.low == 0x10000000
      &&  b.upp == 0x10000000 )
    printf("OK\n");
  else
    printf("NG\n");
}


void sub1(struct u8 *a, struct u8 *b)
{
  sub2(&((*a).upp), &((*b).low));
  sub2(&((*a).upp), &((*b).upp));
}

void sub2(unsigned int *a, unsigned int *b)
{
  *b = *a;
}
