#include <stdio.h>

float sub(float a, float b, float c, float d, float e, float f, float g,
	 float h, float i, float j, float k, float l, float m, float n,
	 float o, float p, float q, float r, float s, float t) {
  return ( a + b + c + d + e + f + g + h + i + j + k 
	   + l + m + n + o + p + q + r + s + t); 
}
int main() {
  float s[20] = {0.01f,1.01f,2.01f,3.01f,4.01f,5.01f,6.01f,7.01f,8.01f,9.01f,11.01f,
		 22.01f,33.01f,44.01f,55.01f,66.01f,77.01f,88.01f,99.01f,100.01f};
  float ans, tmp;

  ans = sub(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],
	    s[11],s[12],s[13],s[14],s[15],s[16],s[17],s[18],s[19]);

  tmp = 640200.012f - (ans * 1000);
  if (-1 <= tmp && tmp <= 1) { 
    puts("OK");
  } else {
    puts("NG");
    printf("%f\n",ans);
  }
}
