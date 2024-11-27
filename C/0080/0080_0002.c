#include <stdio.h>
#include <stdarg.h>

typedef  struct TEST_TAG { long double f; } test_t ;

#if defined(__x86_64__) || defined(__sparcv9)
int main()
{
puts("1,2,3,4,5,6,7,8,9,10,11,12\n"
"1,2,3,4,5,6,7,8,9,10,11,12\n"
"1,2,3,4,5,6,7,8,9,10,11,12\n"
"1,2,3,4,5,6,7,8,9,10,11,12\n"
"1,2,3,4,5,6,7,8,9,10,11,12\n"
"1,2,3,4,5,6,7,8,9,10,11,12\n"
"-1\n"
"-1\n"
"-1\n"
"-1\n"
"0,1,2,3,4,5,6,7,8,9,");
}
#else
void vsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);
}

int  isub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);
   return -1;
}

long long int  lsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);
   return -1;
}

double dsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);
   return -1.0;
}

long double qsub(test_t a1, ...)
{
   va_list ap;
   va_start(ap,a1);

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);
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

   printf("%g,",(double )a1.f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g,",(double )va_arg(ap,test_t).f);
   printf("%g\n",(double )va_arg(ap,test_t).f);

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
   static test_t in1 = {1};
   static test_t in2 = {2};
   static test_t in3 = {3};
   static test_t in4 = {4};
   static test_t in5 = {5};
   static test_t in6 = {6};
   static test_t in7 = {7};
   static test_t in8 = {8};
   static test_t in9 = {9};
   static test_t in10 = {10};
   static test_t in11 = {11};
   static test_t in12 = {12};

   vsub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

 i=isub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

 l=lsub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

 d=dsub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

 q=qsub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

 s=ssub(in1,in2,in3,in4,in5,
	in6,in7,in8,in9,in10,
	in11,in12);

	printf("%d\n",i);
	printf("%lld\n",l);
	printf("%g\n",d);
	printf("%g\n",(double )q);
	for(i=0;i<10;i++) {
	printf("%d,",s.res[i]);
	}
	printf("\n");
  return 0;
}
#endif
