#include <stdio.h>
float init[] = { 1.0, 2.0, 3.0, 4.0 };

float data[] = { 5.0, 6.0, 7.0, 8.0 };

#if defined(__x86_64__)
float res1[] = { 0, 0 , 0, 0 };
float res2[] = { 0, 0 , 0, 0 };
#else
float res1[] = { 5, 2 , 3, 4 };
float res2[] = { 5, 0 , 0, 0 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	movss	%xmm1,%xmm0\n"
"	movaps	%xmm0,res1(%rip)"
);
#else
        res1[0] = data[0];
        res1[1] = init[1];
        res1[2] = init[2];
        res1[3] = init[3];
#endif
   printf("%g %g %g %g\n", res1[0], res1[1], res1[2], res1[3] );
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movss	data(%rip),%xmm0\n"
"	movaps	%xmm0,res2(%rip)"
);
#else
        res2[0] = data[0];
        res2[1] = 0;
        res2[2] = 0;
        res2[3] = 0;
#endif
   printf("%g %g %g %g\n", res2[0], res2[1], res2[2], res2[3] );
}



