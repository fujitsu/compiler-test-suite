#include <stdio.h>
void test_uchar();
void test_ushort();
void test_uint();
void test_char();
void test_short();
void test_int();
int er_count;
int main()
{
  int er_count = 0;
  test_int();
  test_short();
  test_char();
  test_uint();
  test_ushort();
  test_uchar();
  if ( ! er_count )
    printf("P080126 OK\n");
  else {
    printf("P080126 NG\n");
    printf("er_count = %d \n", er_count);
  }
}

void test_int() {
  int x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
void test_short() {
  short int x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
void test_char() {
  char x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
void test_uint() {
  unsigned int x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
void test_ushort() {
  unsigned short int x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
void test_uchar() {
  unsigned char x=0, ans[4]={0};
  ans[0] = x & (-1);
  ans[1] = (-1) & x;
  ans[2] = x | 0;
  ans[3] = 0 | x;
  if ( x != ans[0] || x != ans[1] ||
       x != ans[2] || x != ans[3] ) {
    er_count = 1;
  }
}
