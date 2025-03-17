#include <stdio.h>

int main(){
  float          r4_a,r4_b,r4_c;
  double         r8_a,r8_b,r8_c;
  long  double   r16_a,r16_b,r16_c;
  r4_a=1.0e+3;
  r4_b=1.0e+3;
  r8_a=1.0e+5;
  r8_b=1.0e+5;
  r16_a=1.0e+10;
  r16_b=1.0e+10;
#if  defined(i386) || defined(__x86_64__) || defined(__aarch64__)
	r4_c=r4_a+r4_b;
#else
	asm("        fadd  {r4_a},%fr0,%fr24");
	asm("        fadd  {r4_b},%fr0,%fr25");
	asm("        fadd  %fr24,%fr25,%fr26");
	asm("        fadd  %fr26,%fr0,[r4_c]");
#endif
  if (r4_c==2.0e+3)
                       printf("**(01)** OK \n");
               else    printf("**(01)** NG =%e\n",r4_c);
#if  defined(i386) || defined(__x86_64__) || defined(__aarch64__)
	r8_c = r8_a + r8_b;
#else
	asm("        fadd.d  {r8_a},%fr0,%fr24");
	asm("        fadd.d  {r8_b},%fr0,%fr25");
	asm("        fadd.d  %fr24,%fr25,%fr26");
	asm("        fadd.d  %fr26,%fr0,[r8_c]");
#endif
  if (r8_c==2.0e+5)
                       printf("**(02)** OK \n");
               else    printf("**(02)** NG =%e\n",r8_c);
	r16_c = r16_a + r16_b;

  if (r16_c==2.0e+10)
                       printf("**(03)** OK \n");
               else    printf("**(03)** NG =%e\n",r16_c);
}
