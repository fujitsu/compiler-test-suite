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
          struct tag1 st,func1();
          int count;
          void sub1();

          for(count=0,st.r1.a = 0; st.r1.a < 10;count++,st.r1.a++ ) {
            st = func1();
          }
          if( count == 1 ) puts(" SCRLP13 OK1 ");
          else             puts(" SCRLP13 NG1 ");
          for(count=0,st.r1.b = 0; st.r1.b < 1;count++,st.r1.b++ ) {
            sub1(st);
          }
          if( count == 1 ) puts(" SCRLP13 OK3 ");
          else             puts(" SCRLP13 NG3 ");
exit (0);
}

struct tag1 func1()
{
          struct tag1 init = {
                                 { 12345, 12345 },
                                 { 12345, 12345 }
                             };
          return init;
}

void sub1(struct tag1 st)
{
          if( st.r1.b == 0 ) puts(" SCRLP13 OK2 ");
          else               puts(" SCRLP13 NG2 ");
}
