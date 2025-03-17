#include <stdio.h>
double init[] = { 1.0, 2.0 };

double data[] = { 5.0, 6.0 };

#if defined(__x86_64__)
double res[] = { 0, 0 };
#else
double res[] = { 6, 2 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	addsd	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#else
        res[0] = init[0] + data[0];
        res[1] = init[1];
#endif
   printf("%g %g\n", res[0], res[1] );
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	addsd	data(%rip),%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#endif
   printf("%g %g\n", res[0], res[1] );
}



