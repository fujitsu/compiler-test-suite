
#include <stdio.h>

int ans[100];
int count = 0;

#ifdef __aarch64__
#if !defined(__OPTIMIZE__)
#define  INST_CALL "bl"
#else
#define  INST_CALL "b"
#endif
#else
#define  INST_CALL "call"
#endif

#ifdef __GNUC__
void dummy() {;}
void count_up() { ans[count] = 1; }

void __attribute__((noinline)) test_empty(void)
{
  dummy();
   __asm(INST_CALL "\tcount_up\n\tnop");
}

void __attribute__((noinline)) test_ref(void)
{
   int i=0;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 */\n\tnop" : : "r"(i) );
}

void __attribute__((noinline)) test_def(void)
{
   int i;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 */\n\tnop" : "=r"(i) );
}

void __attribute__((noinline)) test_def_ref(void)
{
   int i=0;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) );
}

void __attribute__((noinline)) test_def_ref_memory(void)
{
   int i=0;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) : "memory" );
}

void __attribute__((noinline)) test_def_ref_cc(void)
{
   int i=0;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) : "cc" );
}

void __attribute__((noinline)) test_def_ref_self(void)
{
   int i=0;
  dummy();
   __asm(INST_CALL "\tcount_up\t/* %w0 %1 */\n\tnop" : "=r"(i) : "0"(i) );
}

void __attribute__((noinline)) test_def_ref_volatile(void)
{
   int i=0;
  dummy();
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) );
}

void __attribute__((noinline)) test_def_ref_volatile_memory(void)
{
   int i=0;
  dummy();
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) : "memory" );
}

void __attribute__((noinline)) test_def_ref_volatile_cc(void)
{
   int i=0;
  dummy();
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) : "cc" );
}

void __attribute__((noinline)) test_def_ref_volatile_reg(void)
{
   int i=0;
  dummy();
#ifdef __aarch64__
   __asm volatile (INST_CALL "\tcount_up\t/* %w0 %w1 */\n\tnop" : "=r"(i) : "r"(i) : "x0" );
#else
   __asm volatile (INST_CALL "\tcount_up\t/* %0 %1 */\n\tnop" : "=r"(i) : "r"(i) : "%eax" );
#endif
}
int main()
{
  int i;
  test_empty();                             count++;
  test_ref();                               count++;
  test_def();                               count++;
  test_def_ref();                           count++;
  test_def_ref_memory();                    count++;
  test_def_ref_cc();                        count++;
  test_def_ref_self();                      count++;
  test_def_ref_volatile();                  count++;
  test_def_ref_volatile_memory();           count++;
  test_def_ref_volatile_cc();               count++;
  test_def_ref_volatile_reg();              count++;
  for(i=0;i<count;i++) if (ans[i] != 1 ) printf("%d\n", ans[i]);
  puts("PASS");
}
#else
int main()
{
  puts("PASS");
}
#endif
