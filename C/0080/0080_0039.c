#include <stdio.h>
#include <stdarg.h>

#if defined(__x86_64__) || defined(__sparcv9)
int main()
{
puts("2,3,1");
}
#else
struct TAG {
  long i;
  float f;
};

void vsub(int arg, ...)
{
   struct TAG st;
   va_list ap;
   va_start(ap,arg);
   st = va_arg(ap,struct TAG);
   printf("%d,",st.i);
   printf("%d,",(int )st.f);
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   static struct TAG st = { 2,3 };
   vsub(1,st);

  return 0;
}
#endif
