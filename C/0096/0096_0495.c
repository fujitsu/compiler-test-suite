#include <stdio.h>
struct str {
  int  member1;
};

struct str str1[10];

void init(struct str *str1) {
  str1->member1 = 1;
}
int main() {
  struct str str2[10];
  int i,j;

  for( i = 0; i < 10; i++){
    init(&str1[i]);
  }
  for( j = 0; j < 10; j++){
    str2[j] = str1[j];
  }

  if(str2[9].member1 == 1){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
