#include <stdio.h>

int sub(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j, int k,
	 int l, int m, int n, int o, int p, int q, int r, int s, int t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {
  int s[20] = {0,1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77,88,99,100};
  int ans;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  if (ans == 640){
    puts("OK");
  } else {
    puts("NG");
    printf("%d\n",ans);
  }
}
