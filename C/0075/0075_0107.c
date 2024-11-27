#include <stdio.h>
static int   return_test1();
static float return_test2();
static int   return_test3();
static int   return_test4();
static int   get_value1();
static int   get_value2();
int main()
{
   int      a=0, result1,result2, result3,result4; 
   float    fresult;
   result1 = return_test1(a);
   if( result1 )
     {
       printf(" ====  (test1): OK ====\n");
     }
   else
     {
       printf(" ==== P72103 (test1): NG ==== (result1=%d)\n",result1);
     } 
   fresult = return_test2(1);
   result2  = ( int ) fresult; 

   if( result2 == 1 ){
	printf(" ====  (test2): OK ====\n" );
   }
   else {
	printf(" ====  (test2): NG ====\n" ); 
   }
   result3 = return_test3((result1+1)<<1);
   if( result3 == 3 ){
     printf(" ====  (test3): OK ====\n" );
   }
   else{
     printf(" ====  (test3): NG ====\n",result3 );
   }
   result4 = return_test4();
   if( result4 ){
      printf(" ====  (test4): OK === \n");
   }
   else{
     printf(" ====  (test ): NG === \n");   
   }
}

static int return_test1(argument)
     int argument;
{
  int i;
  for( i=0; i < 10; i++ ){
    argument += i;
  }
  if( argument >= 20 )
    return 1;
  else
    return 0;
}

static float return_test2(test2_arg)
int test2_arg;
{
  if(test2_arg)
    return (1.0);
  else
    return (0.0);
}
static int return_test3(judge)
int judge;
{
  int a,b,c;
  a = get_value1();
  b = get_value2();
  switch( judge )
    {
    case 0  :
      return a+b;
    case 1  :  
      return a-b;
    case 2  :
      return a*b;
    case 3  :
      return a/b;
    case 4  :
      c = a + b;
      return c;
    default :   
      return 0;
    }
}
static int return_test4()
{
   int value;
   
   value = get_value1();
   if( value == 2 )
     {
       goto L_goto_ret;
     }     
   else {
      goto L_another_test;
   }
L_goto_ret:
   goto L_ret_value;

L_another_test:
   value = get_value2();
   if( value == 1 ){
     return 1;
   }
   else{
     return 0;
   }
L_ret_value:  
  return 1;
}

static int get_value1()
{
	return 2;
}

static int get_value2()
{
	return 1;
}
