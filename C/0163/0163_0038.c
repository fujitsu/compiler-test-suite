#include <stdio.h>
float init[] = { 10.0, 20.0, 30.0, 40.0 };

float data[] = { -1.0, -2.0 , -3.0, -4.0 };

#if defined(__x86_64__)
float res[] = { 0, 0 , 0, 0 };
#else
float res[] = { -3, -4 , 30, 40 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	movhlps	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#else
        res[0] = data[2];
        res[1] = data[3];
        res[2] = init[2];
        res[3] = init[3];
#endif
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
}



