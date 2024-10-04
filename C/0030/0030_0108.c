#include <stdio.h>
  struct str1 {
    struct {
      struct {
        long int e;
      }aaa;
      struct {
        struct {
          struct {
            struct {
              unsigned long long int k;
              unsigned long long int h[1];
              unsigned short int i[1];
            }bbb;
          }ccc;
        }ddd;
      }eee;
    }fff;
  }ggg = {{{7},{{{{3,4,5}}}}}};
int main(){
  printf("ggg.e = %ld\n",ggg.fff.aaa.e);
  printf("ggg.fff.eee.ddd.ccc.bbb.k = %lld\n",ggg.fff.eee.ddd.ccc.bbb.k);
  printf("ggg.fff.eee.ddd.ccc.bbb.h[0] = %lld\n",ggg.fff.eee.ddd.ccc.bbb.h[0]);
  printf("ggg.fff.eee.ddd.ccc.bbb.i[0] = %d\n",ggg.fff.eee.ddd.ccc.bbb.i[0]);
}


