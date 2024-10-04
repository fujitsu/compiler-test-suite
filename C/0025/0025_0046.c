#include<stdio.h>
#include<complex.h>
#include<math.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

#define derr 1.0E-10  
#define is_dequal(a,b) ((a==0 && fabs(b) < derr) || (b==0 && fabs(a) < derr) || (fabs(a-b)/fabs(a) < derr))
#define is_dequal_CL(a,b) ((a==0 && fabsl(b) < derr) || (b==0 && fabsl(a) < derr) || (fabsl(a-b)/fabsl(a) < derr))

void dump(CD arg, int len)
{
  int result = 1;
  if(len == 8) {
    if (is_dequal(crealf(arg), 1.000) && is_dequal(cimagf(arg), 0.000)) {
      result = 0;
    }
  } else if(len == 16) {
    if (is_dequal(creal(arg), 1.000) && is_dequal(cimag(arg), 0.000)) {
      result = 0;
    }
  } else {
    if (is_dequal_CL(creall(arg), 1.000) && is_dequal_CL(cimagl(arg), 0.000)) {
      result = 0;
    }
  }
  if (result == 0) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}



CD bar(CD arg)
{
  dump(arg, sizeof(arg));
  return arg;
}

CD foo()
{
   CD x = 7893457.1793 + 12345.3456i,y = 7893457.1793 + 12345.3456i; x /= y;
   return bar(x);
}

int main()
{
   volatile int X = foo();
   return 0;	
}
