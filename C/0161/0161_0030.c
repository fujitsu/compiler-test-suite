#include <stdio.h>


int i;
union tag {
   int i;
   unsigned char a[4];
} un,*p=&un;
int main(void)
{
  printf ("###       START    ###\n");
  un.i = -1;
  un.a[0] = 0xff;
  un.a[2] = 0x7f;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  *(char *)p =  *((char *)p + 1);
  *((unsigned short *)p + 1) =  *((unsigned short *)p);
#else
  asm("     ld.cu     {p},1,%gr30");
  asm("     st.c      %gr30,{p},%gr0");
  asm("     ld.su     {p},0,%gr30");
  asm("     st.s      %gr30,{p},2");
#endif  

  if (un.i != -1)
    printf ("###       NG       ###\n");
  else
    printf ("###       OK       ###\n");
  printf ("###       END      ###\n");
  return 0;
}
