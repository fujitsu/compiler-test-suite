#include <stdio.h>

double sub(double a, double b, double c, double d, double e, double f, double g,
	 double h, double i, double j, double k, double l, double m, double n,
	 double o, double p, double q, double r, double s, double t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {
  double s[20] = {0.101,1.101,2.101,3.101,4.101,5.101,6.101, 7.101,8.101,9.101,
		  11.101,22.101,33.101,44.101, 55.101,66.101,77.101,88.101,
		  99.101,100.101};
  double ans, tmp;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  tmp = 642020.00 - (ans * 1000);
  if (-1 <= tmp && tmp <= 1) { 
    puts("OK");
  } else {
    puts("NG");
    printf("%lf\n",ans);
  }
}
