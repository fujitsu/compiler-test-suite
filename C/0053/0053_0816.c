#include <stdio.h>
int main()
{
  int size;
  size = sizeof(size_t);
#if defined(__x86_64__) || defined(__aarch64__)
  if(size == 8)
#elif defined(i386)
  if(size == 4)
#else
  if(size == 4)
#endif   
    printf("ok\n");      
  else
    printf("ng\n");      
}
