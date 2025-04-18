#include <stdio.h>
float init[] = { 1.0, 2.0, 3.0, 4.0 };

float data[] = { 5.0, 6.0, 7.0, 8.0 };

#if defined(__x86_64__)
float res[] = { 0, 0 , 0, 0 };
#else
float res[] = { 6, 2 , 3, 4 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	addss	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#else
        res[0] = init[0] + data[0];
        res[1] = init[1];
        res[2] = init[2];
        res[3] = init[3];
#endif
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	addss	data(%rip),%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#endif
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
}



