#include <stdio.h>
struct str {
  int  member1;
};
int main() {
  struct str str1[5],str2[5];
  int i,j;

  str1[4].member1 = 1;
  str2[4] = str1[4];

  if( str2[4].member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
