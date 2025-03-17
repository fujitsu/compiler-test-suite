#include <stdio.h>
float init[] = { 10.0, 20.0, 30.0, 40.0 };

float data[] = { -1.0, -2.0 , -3.0, -4.0 };

#if defined(__x86_64__)
double res[] = { 0, 0 };
#else
double res[] = { -1, -2 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	cvtps2pd	data(%rip),%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#else
        res[0] = data[0];
        res[1] = data[1];
#endif
   printf("%g %g \n", res[0], res[1]);

#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movups	data(%rip),%xmm1\n"
"	cvtps2pd	%xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#endif
   printf("%g %g \n", res[0], res[1]);
}



