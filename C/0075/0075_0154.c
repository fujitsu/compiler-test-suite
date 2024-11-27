#include <stdio.h>
int calc_dummy_arg(int arg);
int dummy_print( int a,int b,int c);
int call_test1(int a, int b, int c);
int ret_val3();
int ret_val2();
int ret_val1();
int main()
{
  int a,b,c,result;
  a = ret_val1();
  b = ret_val2();
  c = ret_val3();
  
  result = call_test1(a,b,c);
  if( result == 80 )
    printf(" HR008 : OK \n");
  else
    printf(" HR008 : NG %d\n",result); 
}

int call_test1(a,b,c)
     int a,b,c;
{
  int i,j ;
  i = ret_val1();
  j = ret_val3();
  a = i * j;
  b = i / j;
  c = i % j;

  dummy_print(a,b,c);

  a = calc_dummy_arg(a);
  b = calc_dummy_arg(b);
  c = calc_dummy_arg(c);

  return a+b+c;
}

int dummy_print( int a,int b,int c)
  {
    return 0;
  }
  
int ret_val1()
{
  return 5; 
}

int ret_val2()
{
  return 10;
}

int ret_val3()
{
  return 15 ;
}

int calc_dummy_arg(arg)
     int arg;
{
  return arg+= 3;
}
