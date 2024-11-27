#include <stdlib.h>
#include <stdio.h>

  struct str1 {
    int a;
    short int b;
    struct {
      unsigned short int c;
      long double d[3];
      struct {
        long long int e;
      }aaa;
      struct {
        struct {
          struct {
            double f;
            long double g[5];
            struct {
              unsigned long long int h[1];
              unsigned short int i[1];
            }bbb;
            int j;
          }ccc;
        }ddd;
        long long int k[1];
      }eee;
      long double l[5];
      short int m[1];
    }fff;
    float n;
  }ggg = {1,2,{3,4,5,6,{7},{{{8,9,0,1,2,3,{4,5},6}},7},8,9,0,1,2,3},4},hhh,iii = {123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789};
int sub1(struct str1 *jjj , struct str1 *kkk);
int main(){
  int i,j,k,l,m,n,o;
  long double x=0,x1=0;
  double z;
  float y = 100.0;
  long int mmm[10][10][10][10]={1,2,3,4,5,6,7,8,9};
  long double x2=123456789;
  unsigned int u1 = 100.123;
  unsigned short int u2 = 54321;

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      for(k=0;k<10;k++){
        for(l=0;l<10;l++){
            mmm[i][j][k][l] = (long)(long long int)(i * 3.0L * 7L);
        }
      }
    }
  }
  printf("mmm[%d][%d][%d][%d] = %d\n",i-1,j-1,k-1,l-1,mmm[i-1][j-1][k-1][l-1]);

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      for(k=0;k<10;k++){
        for(l=0;l<10;l++){
          mmm[l][k][j][i] = mmm[i][j][k][l];
        }
      }
    }
  }
  printf("mmm[%d][%d][%d][%d] = %d\n",i-1,j-1,k-1,l-1,mmm[i-1][j-1][k-1][l-1]);

  x = (long double)(double)13.7229429;
  if(x == 13.7229429) {
    printf("x -----> 13.7229429 \n");
  }
  else {
    if( x == 13.722942){
      printf("x -----> 13.72294 \n");
    }
    else{
      printf("x -----> NG \n");
    } 
  }

  x = (long double)(float)13.7229429;
  printf("x -----> %f\n",(double)x);

  x = (long double)(double)(long double)(double)13.7229429;
  if(x == 13.7229429) {
    printf("x -----> 13.7229429 \n");
  }
  else {
    if( x == 13.72294){
      printf("x -----> 13.72294 \n");
    }
    else{
      printf("x -----> NG \n");
    } 
  }
  for(i=0;i<1000;i++){
    x2 = x;
    z = (double)x2;
  }
  printf("z = %f\n",z);
   
  printf("ggg.fff.eee.ddd.ccc.bbb.h[0] = %lld\n",ggg.fff.eee.ddd.ccc.bbb.h[0]);
  printf("ggg.fff.eee.ddd.ccc.bbb.i[0] = %d\n",ggg.fff.eee.ddd.ccc.bbb.i[0]);
  printf("iii.fff.eee.ddd.ccc.bbb.h[0] = %d\n",(long)iii.fff.eee.ddd.ccc.bbb.h[0]);
  
  hhh = ggg;

  if( sub1(&hhh,&iii) == 0){
    printf("hhh.fff.eee.ddd.ccc.bbb.h[0] = %d\n",(long)hhh.fff.eee.ddd.ccc.bbb.h[0]);
  }
  else {
    printf("Error\n");
  }   
  exit(0);
}

int sub1(struct str1 *jjj , struct str1 *kkk) {

  *jjj = *kkk;
  return(0);
} 
