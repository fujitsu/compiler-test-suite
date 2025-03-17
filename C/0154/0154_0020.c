#include <stdio.h>

long sub(long a, long b, long c, long d, long e, long f, long g,
	 long h, long i, long j, long k, long l, long m, long n,
	 long o, long p, long q, long r, long s, long t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {
  long s[20] = {0l,1l,2l,3l,4l,5l,6l,7l,8l,9l,11l,22l,33l,44l,55l,66l,77l,88l,99l,100l};
  long ans;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  if (ans == 640){
    puts("OK");
  } else {
    puts("NG");
    printf("%ld\n",ans);
  }
}
