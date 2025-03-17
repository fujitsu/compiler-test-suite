#include <stdio.h>
float init[] = { 1.0, 2.0, 3.0, 4.0 };

float data[] = { 5.0, 6.0, 7.0, 8.0 };

#if defined(__x86_64__)
float res[] = { 0, 0 , 0, 0 };
int is_sse3();
#else
float res[] = { -4, 8 , -4, 12 };
#endif
int main()
{
#if defined(__x86_64__)
if( is_sse3() ) {
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	addsubps	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
} else 
#endif
{
        res[0] = init[0] - data[0];
        res[1] = init[1] + data[1];
        res[2] = init[2] - data[2];
        res[3] = init[3] + data[3];
}
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
#if defined(__x86_64__)
if( is_sse3() ) {
asm(
"	movaps	init(%rip),%xmm0\n"
"	addsubps	data(%rip),%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
} else 
#endif
{
        res[0] = init[0] - data[0];
        res[1] = init[1] + data[1];
        res[2] = init[2] - data[2];
        res[3] = init[3] + data[3];
}
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
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

