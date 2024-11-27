#include <stdio.h>
int dummy_func();
int dummy_func();
int check_4();
int check_3();
int check_2(int param1, int param2, int param3, int param4, int param5, int param6);
int sub_1(int param);
int check_1(int param_i);
int a,b,c,d,e,f,g,h;
int array_a[10],array_b[10],array_c[10];
int main()
{
    int count ,i,flag;
    int param_1,param_2, param_3,param_4,param_5,param_6;
    a=b=1;
    c=d=2;
    count = 100;
    check_1(count);
    for(i = 1; i < 10 ; i++)
      {
	array_a[i] = array_b[i] = array_c[i] = 0;
      }
    flag = 1;
    param_1 = sub_1(flag); 
    flag = 2;
    param_2 = sub_1(flag);
    flag = 3;
    param_3 = sub_1(flag);
    flag = 4;
    param_4 = sub_1(flag);
    flag = 5;
    param_5 = sub_1(flag);
    flag = 5;
    param_6 = sub_1(flag);
    check_2(param_1,param_2,param_3,param_4,param_5,param_6);
    check_3();
    check_4();
}
int check_1(param_i)
int param_i;
{
   int i;
   for(i = 1; i < param_i ; i++)
     {
        a = (b + c  + i )*100 ;
        d = a - d;
     } 
   if ( a > 10000)
    {
	c = c + a;
        d = d + c;
    }
   else
    {
        c = a - c;
        d = c - d;
    }
    if(c == 10202 && d == 15500 ){
         printf("RVD TEST NO_1 ==> OK \n");
    }
    else {
	 printf("RVD TEST NO_1 ==> NG \n");
    }
}

int check_2(param1,param2,param3,param4,param5,param6)
int param1,param2,param3,param4,param5,param6;
{
  int sum,sum1,sum2;
  
  sum1 =(param1+param2)*param3;
  sum2 = param4*(param5+param6);
  sum = sum1 + sum2;


  if ( sum == 49)
    {
      printf("RVD TEST NO_2 ==> OK\n");
    }
  else
    {
      printf("RVD TEST NO_2 ==> NG\n");
    }
}
int check_3()
{
       int i,j ,check_arry[10];
       static int result[10] = {15501,20402,
				15501,20402,
				15501,20402,
				15501,20402,
				15501,20402	};
        e = a;
        f = b;
        g = e + c;
        h = f + d;
        dummy_func();
        for(i=0; i<10; i++)
          {
	     if ( i%2 == 0 )
		check_arry[i] = h;
             else
                check_arry[i] = g;	
          }
        for(i =0;i<10;i++ )
          {
          if(check_arry[i] != result[i])
	   { 
              printf("RVD TEST NO_3 ==> NG\n");
	      return 0;
           }
         }
         printf("RVD TEST NO_3 ==> OK\n");
}

int check_4()
{
  int bb,cc;

  a = 5;
  dummy_func();
  bb = a+2;

  a = 0;
  dummy_func();
  cc = a + 9;

  if (bb== 7 && cc==9)
        printf("RVD TEST NO_4 ==> OK\n");
  else
	printf("RVD TEST NO_4 ==> NG\n");
}

int sub_1(param)
int param;
{
  if      ( param == 1 ) return (1);
  else if ( param == 2 ) return (2);
  else if ( param == 3 ) return (3);
  else if ( param == 4 ) return (4);
  else if ( param == 5 ) return (5);
  else                   return (6);
}

int dummy_func()
{
	return 0;
}
