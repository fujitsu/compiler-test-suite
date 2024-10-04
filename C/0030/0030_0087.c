#include <stdio.h>
char *a = "abc", *b = "def"; 
int main()
{
  char *pa[] = { [0] = a, [19] = b };
#if defined(__x86_64__) || defined(__aarch64__)
  printf("%d\n", sizeof(pa));
#else 
  printf("%d\n", sizeof(pa)*2);
#endif
}

