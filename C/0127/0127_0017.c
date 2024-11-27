#include <stdlib.h>

#include <stdio.h>
#include <math.h>

struct aaa{
  long int x;
  char y[3];
 };

int main(){
  int i,j,k,n;
  long int a[100],b[10][10][10];
  struct aaa def[100];
  for(i=0;i<100;i++){
    a[i]=(double)(3*(i+1));
    def[i].x=0;
   }
  for(k=0;k<10;k++){
    for(j=0;j<10;j++){
      for(i=0;i<10;i++){
        b[k][j][i]=0;
       }
     }
   }
  for(i=i-10;i<100;i++){
    if(a[i]%4==0) def[i].x=i;
   }
  for(i=0;i<100;i++){
    if(def[i].x!=0){
      if(i<10){
        b[0][0][i]=a[def[i].x];
       }else{
        j=i/10;
        n=i-(i/10)*10;
        b[0][j][n]=a[def[i].x];
       }
     }
   }
  printf("\n");
  printf("\n");
  for(j=0;j<10;j++){
    for(i=0;i<10;i++){
      printf(" %d ",b[0][j][i]);
     }
   }
  printf("\n");
  printf("\n");

  for(j=0;j<10;j++){
    for(i=0;i<10;i++){
      if(b[0][j][i]==0){
        def[j*10+i].y[0]=' ';
        def[j*10+i].y[1]=' ';
        def[j*10+i].y[2]=' ';
       }else{
        if(b[0][j][i]<10){
          def[j*10+i].y[0]='0'+i;
          def[j*10+i].y[1]=' ';
          def[j*10+i].y[2]=' ';
         }else{
          if(b[0][j][i]>10 && b[0][j][i]<100){
            def[j*10+i].y[0]='0'+(b[0][j][i]-(b[0][j][i]/10)*10);
            def[j*10+i].y[1]='0'+b[0][j][i]/10;
            def[j*10+i].y[2]=' ';
           }else{
            def[j*10+i].y[0]='0'+(b[0][j][i]-(b[0][j][i]/10)*10);
            def[j*10+i].y[1]='0'+
                              ((b[0][j][i]-(b[0][j][i]/100)*100)/10);
            def[j*10+i].y[2]='0'+b[0][j][i]/100;
           }
         }
       }
     }
   }
 for(i=0;i<100;i++){
   if(def[i].y[0]!=' '){
     printf(" %c%c%c ",def[i].y[2],def[i].y[1],def[i].y[0]);
    }
  }
  printf("\n");
	exit(0);
}
