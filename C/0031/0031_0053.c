#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double



void dump(CF *p, int array_length)
{
  int array_index=array_length/sizeof(*p);
  int len = sizeof(*p);
  while (array_index--) {
    if(len == 8)
      printf("%f %f \n",crealf(*p),cimagf(*p));
    else if(len == 16)
      printf("%lf %lf \n",creal(*p),cimag(*p));
    else 
      printf("%Lf %Lf \n",creall(*p),cimagl(*p));
    *p++;	
  }
  printf("\n");	
}

CF foo()
{
   CF x[5] = { 1,2,3,4,5, [0]=6,7,8,9,10 };
   dump(x, sizeof(x));
   CF y[10] = { 1,2,3,4,5, [5]=6,7,8,9,10 };
   dump(y, sizeof(y));
   CF z[15] = { 1,2,3,4,5, [10]=6,7,8,9,10 };
   dump(z, sizeof(z));
   return z[1];
}

int main()
{
   volatile CF x = foo();
   return 0;
}
