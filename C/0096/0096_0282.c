#include <stdio.h>

int main()
{
  int i,N;

  N=10;
  for( i=0;i<100001;i++ ){

    if(i==N){
      N = 10;
    }else{
      N = 100;
    }
  }
  printf("N=%d\n",N);
}
