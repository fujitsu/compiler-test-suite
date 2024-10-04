#include <stdio.h>


#include <stdarg.h>

#if defined(__i386)
int main()
{
puts("## va_copy test start ## ");
puts("2 3 4 5 ");
puts("2 3 4 5 ");
puts("## va_copy test end   ## ");
}
#else
void sub0(int aa, ... )
{
    union uni1
    {
      va_list xx;
      va_list yy;
    }uni2;
    va_start(uni2.xx,aa);
    va_copy(uni2.yy,uni2.xx);
    printf("%d %d %d %d \n",va_arg(uni2.yy,int),va_arg(uni2.yy,int),
	   va_arg(uni2.yy,int),va_arg(uni2.yy,int));
}

void sub1(int aa, ...)
{
  va_list xx;
  va_start(xx,aa);
  va_copy(xx,xx);
  printf("%d %d %d %d \n",va_arg(xx,int),va_arg(xx,int),
	 va_arg(xx,int),va_arg(xx,int));
}


int main(void)
{
  int a,b,c,d,e;
  a = 1;
  b = 2;
  c = 3;
  d = 4;
  e = 5;
  printf("## va_copy test start ## \n");
  sub0(a,b,c,d,e);
  sub1(a,b,c,d,e);
  printf("## va_copy test end   ## \n");
}
#endif
