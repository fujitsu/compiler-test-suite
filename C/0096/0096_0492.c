#include <stdio.h>
struct str {
  int  member1;
};

void init(struct str *str1) {
  str1->member1 = 1;
}
int main() {
  struct str str1[5],str2[5];
  int i,j;

  for( i = 0; i < 5; i++){
    init(&str1[i]);
  }
  for( j = 0; j < 5; j++){
    str2[j] = str1[j];
  }

  if(str2[4].member1 == 1){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
