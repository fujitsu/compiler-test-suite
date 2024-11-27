#include <stdio.h>
struct str {
  int  member1;
};
int main() {
  struct str str1,str2,str3;

  str1.member1 = 1;
  str2 = str1;
  str3 = str2;

  if( str3.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
