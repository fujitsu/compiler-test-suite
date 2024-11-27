#include <stdio.h>
struct str {
  int  member1;
};

struct str str2[5],str3[3 + 2];
int main() {
  struct str str1;

  str1.member1 = 1;
  str2[4] = str1;
  str3[4] = str2[4];

  if( str3[4].member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
