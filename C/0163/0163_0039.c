#include <stdio.h>
double init[] = { 10.0, 20.0 };

double data[] = { -1.0, -2.0 };

#if defined(__x86_64__)
double res[]  = { 0, 0 };
#else
double res[]  = { 10, -1 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movapd	init(%rip),%xmm0\n"
"	movhpd	data(%rip),%xmm0\n"
"	movapd	%xmm0,res(%rip)"
);
#else
        res[0] = init[0];
        res[1] = data[0];
#endif
   printf("%g %g\n", res[0], res[1]);
}



