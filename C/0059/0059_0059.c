#include <stdio.h>
void test3(int,...) __attribute__((sentinel(0)));
void test4(int,...) __attribute__((sentinel(1)));

void test3(int a,...) {}
void test4(int a,...) {}

int main()
{
  test3(1, 2, 3  ); 
  test4(1, 2, 3  ); 

  test3(1,    2, 3, NULL      ); 
  test4(1,    2, 3, NULL      ); 
  test4(1,    2, 3, NULL, 5   ); 
  test4(1,    2, 3, NULL, 5, 6); 
  test4(1, NULL, 3, NULL      ); 
  test4(1, NULL, 3, NULL, 5   );

  return 0;
}

