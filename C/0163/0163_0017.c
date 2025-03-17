#include <stdio.h>
double init[] = { 1, 2 };
#if defined(__x86_64__)
double res[] = { 0, 0 };
#else
double res[] = { 1, 1 };
#endif
int main()
{
  int i;
  for(i=0 ; i < 10000000; i++ ) {
#ifdef MOVDDUP
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	movddup	%xmm0,%xmm0\n"
"	movaps	%xmm0,res(%rip)\n"
);
#endif
#else
#if defined(__x86_64__)
asm(
"	movaps	init(%rip),%xmm0\n"
"	unpcklpd	%xmm0,%xmm0\n"
"	movaps	%xmm0,res(%rip)\n"
);
#endif
#endif
  }
  printf("%g %g\n",res[0],res[1]);
}



