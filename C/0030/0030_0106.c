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
  }ggg = {1,2,{3,4,5,6,{7},{{{8,9,0,1,2,3,{4,5},6}},7},8,9,0,1,2,3},4};
int main(){
  printf("ggg.fff.eee.ddd.ccc.bbb.h[0] = %lld\n",ggg.fff.eee.ddd.ccc.bbb.h[0]);
  printf("ggg.fff.eee.ddd.ccc.bbb.i[0] = %d\n",ggg.fff.eee.ddd.ccc.bbb.i[0]);
}


