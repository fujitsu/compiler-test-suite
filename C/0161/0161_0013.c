#include <stdio.h>

int main(){
  int            i4_a,i4_b,i4_c;
  i4_a=1;
  i4_b=1;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  i4_c = i4_a + i4_b;
#elif defined BSD
  asm("add     {i4_a},gr0,gr24");
  asm("add     {i4_b},gr0,gr25");
  asm("add     gr24,gr25,gr26");
  asm("add     gr26,gr0,[i4_c]");
#else
	asm("        add     {i4_a},%gr0,%gr24");
	asm("        add     {i4_b},%gr0,%gr25");
	asm("        add     %gr24,%gr25,%gr26");
	asm("        add     %gr26,%gr0,[i4_c]");
#endif
  if (i4_c==2)
                       printf("**(01)** OK \n");
               else    printf("**(01)** NG =%d\n",i4_c);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  i4_c = i4_a + i4_b ;
#elif defined BSD
  asm("add     {i4_a},{i4_b},gr24");
  asm("add     gr24,gr0,[i4_c]");
#else
	asm("        add     {i4_a},{i4_b},%gr24");
	asm("        add     %gr24,%gr0,[i4_c]");
#endif
  if (i4_c==2)
                       printf("**(02)** OK \n");
               else    printf("**(02)** NG =%d\n",i4_c);
}
