#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CF arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}



int bar(CF arg)
{
  dump(arg, sizeof(arg));
}

CF foo(CF p1, unsigned char p2,CF p3)
{  
   unsigned char dummy;
   dummy = +(p1) * +(p2);
   p3 = +(p1) * +(p2);
   return bar( +(p1) * +(p2) );
}

int main()
{
   CF p1;
   unsigned char p2;
   CF p3;
   volatile int X;
   p1 = 10.1234 + 10.1234i; p2 = 10;
   X = foo(p1,p2,p3);
   return 0;	
}
