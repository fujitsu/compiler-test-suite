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
          void sub1(struct tag1 st);

          for(count=0,st.r1.a = 0; st.r1.a < 10;count++,st.r1.a++ ) {
            st = func1();
          }
          if( count == 1 ) puts(" OK1 ");
          else             puts(" NG1 ");
          for(count=0,st.r1.b = 0; st.r1.b < 1;count++,st.r1.b++ ) {
            sub1(st);
          }
          if( count == 1 ) puts(" OK3 ");
          else             puts(" NG3 ");
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
          if( st.r1.b == 0 ) puts(" OK2 ");
          else               puts(" NG2 ");
}
