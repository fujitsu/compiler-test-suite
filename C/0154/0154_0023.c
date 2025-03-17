#include <stdio.h>

long double sub(long double a, long double b, long double c, long double d, 
		long double e, long double f, long double g, long double h,
		long double i, long double j, long double k, long double l,
		long double m, long double n, long double o, long double p,
		long double q, long double r, long double s, long double t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {

long double s[20] = {0.0222,1.0222,2.0222,3.0222,4.0222,5.0222,6.0222,
		     7.0222,8.0222,9.0222, 11.0222,22.0222,33.0222,44.0222,
		     55.0222,66.0222,77.0222,88.0222,99.0222,100.0222};
  long double ans, tmp;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  tmp = 640444.000 - (ans * 1000);
  if (-1 <= tmp && tmp <= 1) { 
    puts("OK");
  } else {
    puts("NG");
    printf("%Lf\n",ans);
  }
}
