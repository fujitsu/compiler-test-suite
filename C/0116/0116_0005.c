#define N 100
#define Master 514900
#include <stdio.h>

int main()
{
  int i,j,s;
  int a[N];
  int b[N][N];

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a[j] = i;
      b[i][j] = a[j] + 1;
    }
  }
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a[j] = i;
      b[i][j] = a[j] + 1;
    }
  }
  
  s = 0;
  for(i=0;i<N;i++) {
    s = s + a[i];
  }
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      s = s + b[i][j] ;
  
    }
  }

  if (s == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0;
}
