
#include <stdio.h>

#if defined(__GNUC__)

int g_array1[0];
int g_array2[0];

int foo()
{
  int array1[0];
  int array2[0];

  static int s_array1[0];
  static int s_array2[0];

  if( &array1 == &array2 ) {
    puts("NG1");
  }
  if( &g_array1 == &g_array2 ) {
    puts("NG2");
  }
  if( &s_array1 == &s_array2 ) {
    puts("NG3");
  }
}

#endif
int main()
{
  puts("PASS");
}
