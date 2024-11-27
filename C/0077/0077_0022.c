

#include <stdio.h>

#ifdef __GNUC__
#ifdef __aarch64__
#define REGS "x0","x1","%x2","%x3","%x4"
#else
#define REGS "%rax","%rbx","%rdi","%rdx"
#endif

int ans[100];
long count = 0;

int __attribute__((noinline)) dummy()
{
   __asm volatile("" ::: "memory");
}
void count_up() { ans[count] ++; }

int __attribute__((noinline)) test_empty(void)
{
   int i=0,j;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\n\tnop" ::: REGS );
#else
     __asm("call\tcount_up\n\tnop" ::: REGS );
#endif
   }
   dummy();
   return i;
}

int __attribute__((noinline)) test_ref(void)
{
   int j,i=0;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\t/* %0 */\n\tnop" : : "m"(i) : REGS );
#else
     __asm("call\tcount_up\t/* %0 */\n\tnop" : : "m"(i) : REGS );
#endif
   }
   dummy();
   return i;
}

int __attribute__((noinline)) test_def(void)
{
   int i,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\t/* %0 */\n\tnop" : "=r"(k) :: REGS);
#else
     __asm("call\tcount_up\t/* %0 */\n\tnop" : "=r"(k) :: REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#else
     __asm("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_memory(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory",REGS);
#else
     __asm("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory",REGS);
#endif
   } 
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_cc(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc", REGS);
#else
     __asm("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc", REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm volatile ("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#else
     __asm volatile ("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile_memory(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm volatile ("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory", REGS);
#else
     __asm volatile ("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory", REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile_cc(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm volatile ("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc", REGS);
#else
     __asm volatile ("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc", REGS);
#endif
   }
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile_reg(void)
{
   int i=0,j,k;
   for(j=0;j<10;j++) {
#ifdef __aarch64__
     __asm volatile ("bl\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#else
     __asm volatile ("call\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS);
#endif
   }
   dummy();
   return j+k;
}
int main()
{
  int i;
  i=test_empty();                             printf("", i); count++;
  i=test_ref();                               printf("", i); count++;
  i=test_def();                               printf("", i); count++;
  i=test_def_ref();                           printf("", i); count++;
  i=test_def_ref_memory();                    printf("", i); count++;
  i=test_def_ref_cc();                        printf("", i); count++;
  i=test_def_ref_volatile();                  printf("", i); count++;
  i=test_def_ref_volatile_memory();           printf("", i); count++;
  i=test_def_ref_volatile_cc();               printf("", i); count++;
  i=test_def_ref_volatile_reg();              printf("", i); count++;
  for(i=0;i<count;i++) {
    if (ans[i] != 10 && ans[i] != 1) {
      printf("%d\n", ans[i]);
    }
  }
  puts("PASS");
}

#endif
