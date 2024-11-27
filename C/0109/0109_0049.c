
#include <stdio.h>
#include <stdlib.h>
typedef unsigned char           test_t;
   
int test( test_t *aaaa, int xxxxxx, test_t *bbbb, int yyyyyy ) {
  int i_sum = 0;
  int y, x;
  for( y = 0; y < 16; y++ ) {
    for( x = 0; x < 16; x++ ) {
      i_sum += abs( aaaa[x] - bbbb[x]);
    }
    aaaa += xxxxxx;
    bbbb += yyyyyy;
  }
  return i_sum;
}
int main()
{
  puts("PASS");
}
