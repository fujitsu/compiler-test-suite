

#include <stdio.h>

int ans[100];
int count = 0;

#ifdef __aarch64__
#define INST_CALL "bl"
#else
#define INST_CALL "call"
#endif

#ifdef __GNUC__
void __attribute__((noinline)) dummy()
{
   __asm volatile("" ::: "memory");
}
int count_up() { ans[count] ++; dummy(); return 1; }

int __attribute__((noinline)) test_empty(void)
{
   int i=0;
   __asm(INST_CALL "\tcount_up\n\tnop");
   __asm(INST_CALL "\tcount_up\n\tnop");
   dummy();
   return i;
}

int __attribute__((noinline)) test_ref(void)
{
   int i=0;
   __asm(INST_CALL "\tcount_up\t/* %0 */\n\tnop" : : "m"(i) );
   __asm(INST_CALL "\tcount_up\t/* %0 */\n\tnop" : : "m"(i) );
   dummy();
   return i;
}

int __attribute__((noinline)) test_def(void)
{
   int i,j,k;
   __asm(INST_CALL "\tcount_up\t/* %w0 */\n\tnop" : "=r"(j) );
   __asm(INST_CALL "\tcount_up\t/* %w0 */\n\tnop" : "=r"(k) );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref(void)
{
   int i=0,j,k;
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) );
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_memory(void)
{
   int i=0,j,k;
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) : "memory" );
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory" );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_cc(void)
{
   int i=0,j,k;
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) : "cc" );
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc" );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile(void)
{
   int i=0,j,k;
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) );
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile_memory(void)
{
   int i=0,j,k;
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) : "memory" );
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "memory" );
   dummy();
   return j+k;
}

int __attribute__((noinline)) test_def_ref_volatile_cc(void)
{
   int i=0,j,k;
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) : "cc" );
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) : "cc" );
   dummy();
   return j+k;
}

#ifdef __aarch64__
#define REGS "x0"
#else
#define REGS "%eax"
#endif

int __attribute__((noinline)) test_def_ref_volatile_reg(void)
{
   int i=0,j,k;
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(j) : "m"(i) : REGS );
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(k) : "m"(i) : REGS );
   dummy();
   return j+k;
}
int main()
{
  int i;
  i=test_empty();                             count++;
  i=test_ref();                               count++;
  i=test_def();                               count++;
  i=test_def_ref();                           count++;
  i=test_def_ref_memory();                    count++;
  i=test_def_ref_cc();                        count++;
  i=test_def_ref_volatile();                  count++;
  i=test_def_ref_volatile_memory();           count++;
  i=test_def_ref_volatile_cc();               count++;
  i=test_def_ref_volatile_reg();              count++;
  for(i=0;i<count;i++) printf("%d\n", ans[i]);
  puts("PASS");
}

#else
int main()
{
  int i;
  for(i=0;i<10;i++) printf("2\n");
  puts("PASS");
}
#endif
