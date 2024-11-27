/* test for dead code elimination */

#include <stdio.h>

#ifdef __GNUC__
void __attribute__((noinline)) empty1(void)
{
   __asm("");                                  
}

void __attribute__((noinline)) empty2(void)
{
   __asm volatile ("");                        
}

void __attribute__((noinline)) empty3(void)
{
   __asm volatile ("" ::: "memory");           
}

void __attribute__((noinline)) empty4(void)
{
   int i;
   __asm volatile ("" : "=r"(i) );             
}

void __attribute__((noinline)) empty5(void)
{
   int i = 1;
   __asm volatile ("" :: "r"(i)  );            
}
#endif
int main()
{
  puts("PASS");
}
