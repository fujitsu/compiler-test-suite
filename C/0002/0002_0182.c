#include <stdio.h>
#define N 16

int A[N]={0,1,2,3, 2,7,5,8, 11,13,4,14, 9,10,15,14};
int B[N]={0,1,2,3, 4,5,6,7, 8,9,10,11, 12,13,14,15};

void datadepend(void) {
  int i;
  for(i=0;i<N;++i) {
    B[i] = B[A[i]];
  }
}


void printer(void) {
  int i;
  for(i=0;i<N;++i) {
    printf("%d %d\n",i,B[i]);
  }
}
  
int main(void) {
  printer();
  datadepend();
  printer();
}
