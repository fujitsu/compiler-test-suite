#include <stdio.h>

float r4a[10]={0,0,0,0,0,0,0,0,0,0};
float r4b[10]={1,2,3,4,5,6,7,8,9,10};
float r4c[10]={3,4,5,6,7,8,9,0,1,2};
float r4d[10]={0,0,0,0,0,0,0,0,0,0};
float r4e[10]={1,2,3,4,5,6,7,8,9,10};
float r4f[10]={3,4,5,6,7,8,9,0,1,2};
float r4g[10]={0,0,0,0,0,0,0,0,0,0};
float r4h[10]={1,2,3,4,5,6,7,8,9,10};
float r4i[10]={3,4,5,6,7,8,9,0,1,2};
float r4j[10]={0,0,0,0,0,0,0,0,0,0};
float r4k[10]={1,2,3,4,5,6,7,8,9,10};
float r4l[10]={3,4,5,6,7,8,9,0,1,2};
float r4m[10]={0,0,0,0,0,0,0,0,0,0};
float r4n[10]={1,2,3,4,5,6,7,8,9,10};
float r4o[10]={3,4,5,6,7,8,9,0,1,2};
float r4p[10]={0,0,0,0,0,0,0,0,0,0};
float r4q[10]={1,2,3,4,5,6,7,8,9,10};
float r4r[10]={3,4,5,6,7,8,9,0,1,2};
float r4s[10]={0,0,0,0,0,0,0,0,0,0};
float r4t[10]={1,2,3,4,5,6,7,8,9,10};
float r4u[10]={3,4,5,6,7,8,9,0,1,2};
float r4v[10]={0,0,0,0,0,0,0,0,0,0};
float r4w[10]={1,2,3,4,5,6,7,8,9,10};
float r4x[10]={3,4,5,6,7,8,9,0,1,2};
float r4y[10]={1,2,3,4,5,6,7,8,9,10};
float r4z[10]={3,4,5,6,7,8,9,0,1,2};

double r8a[10]={0,0,0,0,0,0,0,0,0,0};
double r8b[10]={1,2,3,4,5,6,7,8,9,10};
double r8c[10]={3,4,5,6,7,8,9,0,1,2};
double r8d[10]={0,0,0,0,0,0,0,0,0,0};
double r8e[10]={1,2,3,4,5,6,7,8,9,10};
double r8f[10]={3,4,5,6,7,8,9,0,1,2};
double r8g[10]={0,0,0,0,0,0,0,0,0,0};
double r8h[10]={1,2,3,4,5,6,7,8,9,10};
double r8i[10]={3,4,5,6,7,8,9,0,1,2};
double r8j[10]={0,0,0,0,0,0,0,0,0,0};
double r8k[10]={1,2,3,4,5,6,7,8,9,10};
double r8l[10]={3,4,5,6,7,8,9,0,1,2};
double r8m[10]={0,0,0,0,0,0,0,0,0,0};
double r8n[10]={1,2,3,4,5,6,7,8,9,10};
double r8o[10]={3,4,5,6,7,8,9,0,1,2};
double r8p[10]={0,0,0,0,0,0,0,0,0,0};
double r8q[10]={1,2,3,4,5,6,7,8,9,10};
double r8r[10]={3,4,5,6,7,8,9,0,1,2};
double r8s[10]={0,0,0,0,0,0,0,0,0,0};
double r8t[10]={1,2,3,4,5,6,7,8,9,10};
double r8u[10]={3,4,5,6,7,8,9,0,1,2};
double r8v[10]={0,0,0,0,0,0,0,0,0,0};
double r8w[10]={1,2,3,4,5,6,7,8,9,10};
double r8x[10]={3,4,5,6,7,8,9,0,1,2};
double r8y[10]={1,2,3,4,5,6,7,8,9,10};
double r8z[10]={3,4,5,6,7,8,9,0,1,2};
int main()
{

  int  i,j,n;

  for(i=0;i<10;i+=2)
    {
      n = i-1;
    }

  for(i=0;i<10;i++)
    {
      r4a[i] = 
	r4b[i]+r4c[i]+r4d[i]+r4e[i]-r4f[i]+ 
	r4g[i]+r4h[i]+r4i[i]+r4j[i]-r4k[i]+ 
	r4l[i]+r4m[i]+r4n[i]+r4o[i]-r4p[i]+ 
	r4q[i]+r4r[i]+r4s[i]+r4t[i]-r4u[i]+ 
	r4v[i]+r4w[i]+r4x[i]+r4y[i]-r4z[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=0;i<n;i++)
    {
      r4a[i] = 
	r4b[i]+r4c[i]+r4d[i]+r4e[i]-r4f[i]+ 
	r4g[i]+r4h[i]+r4i[i]+r4j[i]-r4k[i]+ 
	r4l[i]+r4m[i]+r4n[i]+r4o[i]-r4p[i]+ 
	r4q[i]+r4r[i]+r4s[i]+r4t[i]-r4u[i]+ 
	r4v[i]+r4w[i]+r4x[i]+r4y[i]-r4z[i];
      r4a[i] = r4a[i]-
	r4b[i]-r4c[i]+r4d[i]-r4e[i]-r4f[i]+ 
	r4g[i]+r4h[i]*r4i[i]+r4j[i]+r4k[i]+ 
	r4l[i]-r4m[i]+r4n[i]+r4o[i]-r4p[i]+ 
	r4q[i]+r4r[i]*r4s[i]-r4t[i]+r4u[i]+ 
	r4v[i]-r4w[i]+r4x[i]+r4y[i]-r4z[i];
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);


  for(i=0;i<10;i++)
    {
      r8a[i] = 
	r8b[i]+r8c[i]+r8d[i]+r8e[i]-r8f[i]+ 
	r8g[i]+r8h[i]+r8i[i]+r8j[i]-r8k[i]+ 
	r8l[i]+r8m[i]+r8n[i]+r8o[i]-r8p[i]+ 
	r8q[i]+r8r[i]+r8s[i]+r8t[i]-r8u[i]+ 
	r8v[i]+r8w[i]+r8x[i]+r8y[i]-r8z[i];
    }

  printf(" test 3 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

  for(i=0;i<n;i++)
    {
      r8a[i] = 
	r8b[i]+r8c[i]+r8d[i]+r8e[i]-r8f[i]+ 
	r8g[i]+r8h[i]+r8i[i]+r8j[i]-r8k[i]+ 
	r8l[i]+r8m[i]+r8n[i]+r8o[i]-r8p[i]+ 
	r8q[i]+r8r[i]+r8s[i]+r8t[i]-r8u[i]+ 
	r8v[i]+r8w[i]+r8x[i]+r8y[i]-r8z[i];
      r8a[i] = r8a[i]-
	r8b[i]-r8c[i]+r8d[i]-r8e[i]-r8f[i]+ 
	r8g[i]+r8h[i]*r8i[i]+r8j[i]+r8k[i]+ 
	r8l[i]-r8m[i]+r8n[i]+r8o[i]-r8p[i]+ 
	r8q[i]+r8r[i]*r8s[i]-r8t[i]+r8u[i]+ 
	r8v[i]-r8w[i]+r8x[i]+r8y[i]-r8z[i];
    }

  printf(" test 4 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

}
