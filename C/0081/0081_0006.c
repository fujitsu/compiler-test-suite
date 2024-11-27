#include <stdio.h>
#include <stdarg.h>

typedef  long double  test_t ;

void vsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));
}

int  isub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));
   return -1;
}

long long int  lsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));
   return -1;
}

double dsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));
   return -1.0;
}

long double qsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));
   return -1.0;
}

struct TAG {
  int res[10];
};

struct TAG ssub(test_t a1, ...)
{
   struct TAG res;
   int i;
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1);
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g,",(double )va_arg(ap,test_t));
   printf("%g\n",(double )va_arg(ap,test_t));

   for(i=0;i<10;i++) {
     res.res[i]=i;
   }
   return res;
}
int main()
{
   int i;
   long long int l;
   double d;
   long double q;
   struct TAG s;
   vsub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

 i=isub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

 l=lsub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

 d=dsub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

 q=qsub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

 s=ssub((test_t)1,(test_t)2,(test_t)3,(test_t)4,(test_t)5,
	(test_t)6,(test_t)7,(test_t)8,(test_t)9,(test_t)10,
	(test_t)11,(test_t)12);

	printf("%d\n",i);
	printf("%lld\n",l);
	printf("%g\n",d);
	printf("%g\n",(double )q);
	for(i=0;i<10;i++) {
	printf("%d,",s.res[i]);
	}
	printf("\n");
}
