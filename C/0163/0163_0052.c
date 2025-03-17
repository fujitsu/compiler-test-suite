#include <stdio.h>
float init[] = { 1.0, 2.0, 3.0, 4.0 };

float data[] = { 5.0, 6.0, 7.0, 8.0 };

#if defined(__x86_64__)
float res[] = { 0, 0 , 0, 0 };
#else
float res[] = { 2, 2 , 7, 8 };
#endif
int main()
{
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movaps	data(%rip),%xmm1\n"
"	shufps	$229, %xmm1,%xmm0\n"
"	movaps	%xmm0,res(%rip)"
);
#else
        res[0] = init[1];
        res[1] = init[1];
        res[2] = data[2];
        res[3] = data[3];
#endif
   printf("%g %g %g %g\n", res[0], res[1], res[2], res[3] );
}



