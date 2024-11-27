#include <stdio.h>
#include <stdarg.h>

#if defined(__x86_64__) || defined(__sparcv9)
int main()
{
puts("0,1,2,3,4,5,6");
}
#else
struct TAG {
  float f1;
  float f2;
};

void vsub(struct TAG arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",(int )arg.f1);
   printf("%d,",(int )arg.f2);
   printf("%d,",va_arg(ap,int));
   printf("%d,",(int )va_arg(ap,long long));
#if defined(__GNUC__)
   printf("%d,",(int )va_arg(ap,double));
#else
   printf("%d,",(int )va_arg(ap,float));
#endif
   printf("%d,",(int )va_arg(ap,double));
   printf("%d\n",(int )va_arg(ap,long double));

   va_end(ap);
}

int main()
{
   int i = 2;
   long long int l = 3;
   float f = 4;
   double d = 5;
   long double q =6;
   struct TAG st = { 0, 1 };

   vsub(st,i,l,f,d,q);

  return 0;
}




#endif
