#include <stdio.h>
#include <complex.h>

double _Complex  sub(double _Complex a, double _Complex b, double _Complex c, 
		     double _Complex d, double _Complex e, double _Complex f, 
		     double _Complex g, double _Complex h, double _Complex i,
		     double _Complex j, double _Complex k, double _Complex l,
		     double _Complex m, double _Complex n, double _Complex o, 
		     double _Complex p, double _Complex q, double _Complex r,
		     double _Complex s, double _Complex t, double _Complex u,
		     double _Complex v, double _Complex w, double _Complex x,
		     double _Complex y, double _Complex z)
{

  a = a + (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z) * (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z);

  a = a - (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z) * (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z);

  a = a + (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z) * (- b - c - d - e - f - g - h - i - j - k - l - m - n - o - p - q - r - s - t - u - v - w - x - y - z);
  
  return a * ((b - c + d - e + f - g + h - i + j - k + l - m + n - o + p - q + r - s + t - u + v - w + x - y + z) / (b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v + w + x + y + z));
  
}
int main()
{
  double _Complex a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,ans;
  int ir,iq;
  a = 0.001 + 0.002i;
  b = a;
  c = a;
  d = a;
  e = a;
  f = a;
  g = a;
  h = a;
  i = a;
  j = a;
  k = a;
  l = a;
  m = a;
  n = a;
  o = a;
  p = a;
  q = a;
  r = a;
  s = a;
  t = a;
  u = a;
  v = a;
  w = a;
  x = a;
  y = a;
  z = a;
  ans = sub(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z);
  ir = creal(ans)*10000000;
  iq = cimag(ans)*10000000;
  if (ir == 1150 && iq == -200) {
    printf(" ok\n");
  }else{
    printf(" ng\n ir =%d  iq = %d\n",ir,iq);
  }
}
