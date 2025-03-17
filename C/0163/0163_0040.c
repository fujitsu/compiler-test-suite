#include <stdio.h>
float init[] = { 10.0, 20.0, 30.0, 40.0 };

float data[] = { -1.0, -2.0 , -3.0, -4.0 };

#if defined(__x86_64__)
float res1[] = { 0, 0 , 0, 0 };
float res2[] = { 0, 0 , 0, 0 };
#else
float res1[] = { 10, 20, -1, -2 };
float res2[] = { -1, -2, 30, 40 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movhps	data(%rip),%xmm0\n"
"	movaps	%xmm0,res1(%rip)"
);
#else
        res1[0] = init[0];
        res1[1] = init[1];
        res1[2] = data[0];
        res1[3] = data[1];
#endif
   printf("%g %g %g %g\n", res1[0], res1[1], res1[2], res1[3] );
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	%xmm0,res2(%rip)\n"
"	movhps	data(%rip),%xmm0\n"
"	movhps	%xmm0,res2(%rip)"
);
#endif
   printf("%g %g %g %g\n", res2[0], res2[1], res2[2], res2[3] );
}
