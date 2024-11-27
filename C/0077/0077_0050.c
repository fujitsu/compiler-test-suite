#include <stdio.h>


void test1()
{
  int    i ;
  int    j ;
  
  i = 10;
  j = 3;
  
  printf("10/3=%d\n", i/j );   
  printf("10%%3=%d\n", i%j );   


  i = -10;
  j = 3;
  
  printf("-10/3=%d\n", i/j );       
  printf("-10%%3=%d\n", i%j );       


  i = -10;
  j = -3;
  
  printf("-10/-3=%d\n", i/j );      
  printf("-10%%-3=%d\n", i%j );      

}

int main()
{
  test1();
  return 0;
}
