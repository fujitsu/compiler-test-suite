#include <stdio.h>
int main(){
  int a4[10]={3,3,3,3,3,3,3,3,3,3},
  b4[10]={5,5,5,5,5,5,5,5,5,5},
  c4[10]={2,2,2,2,2,2,2,2,2,2},
  d4[10] , result=0 ;
  int x4,y4,z4,i ;
  for(i=0;i<10;i++){
    x4=a4[i];
    y4=-x4 ;
    z4=c4[i];
    x4=b4[i];
    d4[i]=y4+x4+z4 ;
  }
  for(i=0;i<10;i++){
    result+=d4[i]==4;
    printf("%d ", d4[i]) ;
  }
  printf("\n") ;
  if(result==10) printf(" OK \n") ;
  else           printf(" NG \n") ;
}
