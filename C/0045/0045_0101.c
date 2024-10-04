#include <stdio.h>
#include <string.h>

      int a[10] = { 1,2,3,4,5,600,700,800,900,1000 };
const int b[10] = { 10,20,30,40,50,60,70,80,90,100 };
const int ans[10] = { 11,22,33,44,55, 600, 700, 800, 900, 1000 };

void foo(int *pa, int *pb, int id)
{
 int i;
 for(i = 0; pa[i] <  id; i++){
   pa[i] = pa[i] + pb[i];
 }
}
int main()
{
  foo(a, b, 600);

  if (memcmp(a, ans, sizeof(int)*10)==0) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
