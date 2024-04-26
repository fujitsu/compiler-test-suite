#include  <stdio.h>

#if INT64
#define int __int32
#endif
int main()
{
union tag {
             int a;
             char b;
          } t1;
static char c[]="abcd";
int i,j;

for(i = 0; i < 4; i++)
{
  t1.b = c[i];
  printf("b = %c  ",t1.b);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  t1.a = t1.a+0x01;
  j=t1.a>>0;
#else
  t1.a = t1.a+0x01000000;
  j=t1.a>>24;
#endif
  printf("a = %c \n",(char)j);

  if((char)j==t1.b) printf(" ----- ok ----- \n");
  else                   printf(" ----- ng ----- \n");

}
}
