#include <stdio.h>
#include <complex.h>

double _Complex sub(double _Complex a, double _Complex b, double _Complex c, double _Complex d, double _Complex e, double _Complex f, double _Complex g, double _Complex h, double _Complex i, double _Complex j, double _Complex k, double _Complex l, double _Complex m, double _Complex n, double _Complex o, double _Complex p, double _Complex q, double _Complex r, double _Complex s, double _Complex t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {
  double _Complex s[20] = {0.+1.I,1.+1.I,2.+1.I,3.+1.I,4.+1.I,5.+1.I,6.+1.I, 7.+1.I,8.+1.I,9.+1.I, 11.+1.I,22.+1.I,33.+1.I,44.+1.I, 55.+1.I,66.+1.I,77.+1.I,88.+1.I,99.+1.I,100.+1.I};
  double _Complex ans;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  if (ans == 640.000000+20.000000I) {
    puts("OK");
  } else {
    puts("NG");
    printf("%lf+%lfI\n",creal(ans),cimag(ans));
  }
}
