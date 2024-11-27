#include <stdio.h>

int main(void)
{
  int a[10] = {10, 20, 30, 40, 50, 60, 70 ,80, 90, 100};
  int *p;
  int b;
  int *c;
  
  c = &b;
  b = 10;
#if defined(sun)
  printf("0x%p\n", *c);
#else
  printf("%p\n", *c);
#endif
  *c = 20;
#if defined(sun)
  printf("0x%p\n", b);
#else
  printf("%p\n", b);
#endif
  p = a;
#if defined(sun)
  printf("0x%p, 0x%p, 0x%p, 0x%p\n", *p, *(p+1), *(p+2), *(p+3));
  printf("0x%p, 0x%p, 0x%p, 0x%p\n", a[0], a[1], a[2], a[3]);
#else
  printf("%p, %p, %p, %p\n", *p, *(p+1), *(p+2), *(p+3));
  printf("%p, %p, %p, %p\n", a[0], a[1], a[2], a[3]);
#endif
  return 0;
}

      
      
       
