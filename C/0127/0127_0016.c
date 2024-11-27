#include <stdlib.h>

#include <stdio.h>
#include <stdio.h>

int main(){

  int a,i,j,n,cnt,cnt2,*x;
  long int s[1000],t[6],u[1000];

  n=0;
  a=1000;
  x=&a;

  for(i=0;i<1000;i++){
    s[i]=0;
    u[i]=0;
   }
  for(i=0;i<6;i++){
    t[i]=0;
   }

  for(i=1000;i>0;i--){
    if(*x%i==0){
      s[-(-i+1)]=1;
     }
   }
  for(i=999;i>=0;i--){
    if(s[i]==1){
      cnt=0;
      for(j=i+1;j>0;j--){
        if((i+1)%j==0){
          cnt++;
         }
       }
      if(cnt==2){
        printf(" '%d' = %d,1  ",i+1,i+1);
        printf("\n");
       }
      if(cnt==4){
        n=0;
        for(j=i+1;j>0;j--){
          if((i+1)%j==0){
            if(n==0) t[0]=j;
            if(n==1) t[1]=j;
            if(n==2) t[2]=j;
            if(n==3) t[3]=j;
            n++;
           }
         }
        printf(" '%d' = %d,%d,%d,%d ",i+1,t[0],t[1],t[2],t[3]);
        printf("\n");
       }
      if(cnt==6){
        n=0;
        for(j=i+1;j>0;j--){
          if((i+1)%j==0){
            if(n==0) t[0]=j;
            if(n==1) t[1]=j;
            if(n==2) t[2]=j;
            if(n==3) t[3]=j;
            if(n==4) t[4]=j;
            if(n==5) t[5]=j;
            n++;
           }
         }
        printf(" '%d' = %d,%d,%d,%d,%d,%d ",i+1,t[0],t[1],t[2],t[3],
               t[4],t[5]);
        printf("\n");
       }
     }else{
      cnt2=0;
      for(j=i+1;j>0;j--){
        if((i+1)%j==0) cnt2++;
       }
      if(cnt2==2) u[i]=i+1;
     }
   }
  printf("\n");
  for(i=0;i<1000;i++){
    if(u[i]!=0) printf(" %d ",u[i]);
   }
  printf("\n");
	exit(0);
 }
