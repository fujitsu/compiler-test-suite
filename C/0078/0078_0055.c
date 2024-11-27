#include <stdio.h>

struct TAG {
  float i;
  struct TAG2 {
    float j;
  } x;
} ;
  
void test8(struct TAG st ) {
  float i = st.i + st.x.j;
  if( i == 1+2 ) {
    puts("OK1");
  }
  else {
    puts("NG1");
  }
}

void test8k(st)
struct TAG st;
{
  float i = st.i + st.x.j;
  if( i == 1+2 ) {
    puts("OK2");
  }
  else {
    puts("NG2");
  }
}
int main()
{
  struct TAG st = { 1,{2} };

  test8(st);
  test8k(st);
}
