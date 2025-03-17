#include <stdio.h>

double init[] = { 1.0, 2.0 };

double data[] = { 5.0, 6.0 };

#if defined(__x86_64__)
double res1[] = { 0, 0 };
double res2[] = { 0, 0 };
#else
double res1[] = { 5, 2 };
double res2[] = { 5, 0 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	movsd	%xmm1,%xmm0\n"
"	movaps	%xmm0,res1(%rip)"
);
#else
        res1[0] = data[0];
        res1[1] = init[1];
#endif
   printf("%g %g\n", res1[0], res1[1] );
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movsd	data(%rip),%xmm0\n"
"	movaps	%xmm0,res2(%rip)"
);
#else
        res2[0] = data[0];
        res2[1] = 0;
#endif
   printf("%g %g\n", res2[0], res2[1] );
}



