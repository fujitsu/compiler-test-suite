#include <stdio.h>

 
int main( ) { 
  int i,j;
  long double z[10],c;
  double      x[10],a;
  float       y[10],b;


  for(i=0;i<10;i++) {
     for(j=0,b=0.0f; j<10; j++) {  
        b=b + 1.0f;
     }
     y[i]=b; 
  }
  if (y[i-1] == 10.0f)
        printf("(1) ok\n");
  else  printf("(1) ng\n");

  for(i=0;i<10;i++) {
     for(j=0,a=0.0; j<10; j++) {  
        a=a + 1.0;
     }
     x[i]=a; 
  }
  if (x[i-1] == 10.0)
        printf("(2) ok\n");
  else  printf("(2) ng\n");
  for(i=0;i<10;i++) {
     for(j=0,c=0.0l; j<10; j++) {  
        c=c + 1.0l;
     }
     z[i]=c; 
  }
  if (z[i-1] == 10.0l)
        printf("(3) ok\n");
  else  printf("(3) ng\n");
}
