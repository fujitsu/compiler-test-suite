#include <stdio.h>
double init[] = { 1.0, 2.0 };

double data[] = { 5.0, 6.0 };

#if defined(__x86_64__)
double res[] = { 0, 0 };
int is_sse3();
#else
double res[] = { 3, 11 };
#endif
int main()
{
#if defined(__x86_64__)
if( is_sse3() ) {
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	haddpd	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
} else
#endif
{
        res[0] = init[0] + init[1];
        res[1] = data[0] + data[1];
}
   printf("%g %g\n", res[0], res[1] );
#if defined(__x86_64__)
if( is_sse3() ) {
asm(
"	movaps	init(%rip),%xmm0\n"
"	haddpd	data(%rip),%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
} else
#endif
{
        res[0] = init[0] + init[1];
        res[1] = data[0] + data[1];
}
   printf("%g %g\n", res[0], res[1] );
}


#if defined(__x86_64__)
int is_sse3()
{
  asm(" push    %rbx");
  asm(" movl    $1, %eax");
  asm(" cpuid ");
  asm(" mov %ecx,%eax");
  asm(" and $1,%eax");
  asm(" pop     %rbx");
  return 0;
}
#endif

