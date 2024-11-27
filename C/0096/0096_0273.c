#include <stdio.h>

int main(void)
{
  int a,i;

  for( i=0;i<100001;i++ ){
    if(i==0){
      a=10;
      printf("a=%d\n",a);
    }else{
      a=100;
    }
  }
  for( i=0;i<100001;i++ ){
    if(i==0){
      a=10;
      return 0;
    }else{
      a=100;
      return 0;
    }
  }
}
