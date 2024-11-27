#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include <stdio.h>

struct tag1 {
  struct tag2 {
    int a;
    int b;
  } r1;
  struct tag3 {
    int c;
    int d;
  } r2;
};
int main()
{
          struct tag1 st;
          struct tag1 init = {
                                 { 12345, 12345 },
                                 { 12345, 12345 }
                             };
          int count;

          for(count=0,st.r1.a = 0; st.r1.a < 10;count++,st.r1.a++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK1 ");
          else             puts(" SCRLP16 NG1 ");
          for(count=0,st.r1.b = 0; st.r1.b < 10;count++,st.r1.b++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK2 ");
          else             puts(" SCRLP16 NG2 ");
          for(count=0,st.r2.c = 0; st.r2.c < 10;count++,st.r2.c++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK3 ");
          else             puts(" SCRLP16 NG3 ");
          for(count=0,st.r2.d = 0; st.r2.d < 10;count++,st.r2.d++ ) {
            st = init;
          }
          if( count == 1 ) puts(" SCRLP16 OK4 ");
          else             puts(" SCRLP16 NG4 ");
exit (0);
}
