#include <stdio.h>


#define N  50
#define M1 10
#define M2 20
#define ANS 975461
int main()
{
  int i;
  int a[N],b[N],c[N],d[N];
  int s1,s2,s3,s4=0;
  int t1,t2,t3;
  int sum=0;
  
  for (i=0; i<N; i++) {
    a[i] = i % M1;
    b[i] = i % M2;
    c[i] = i % (M1 + M2);
    d[i] = i % (M2 - M1);
    sum = sum - a[i] - b[i];
  }

  for (i=0; i<N; i++) {
    a[i] = (a[i] + b[i]) * (a[i] - b[i]);
    a[i] = (c[i] + d[i]) * (c[i] - d[i]) - a[i];
    s1 = (a[i] + b[i]) * (a[i] + b[i]);
    s4 = s1 + s4;
    s2 = (a[i%M1] + b[i%M1]) * (a[i%M1] + b[i%M1]);
    s3 = (a[i%M2] + b[i%M2]) * (a[i%M2] + b[i%M2]);
    t1 = (a[i] - b[i]) * (a[i] - b[i]);
    t2 = (a[i%M1] - b[i%M1]) * (a[i%M1] - b[i%M1]);
    t3 = (a[i%M2] - b[i%M2]) * (a[i%M2] - b[i%M2]);
    sum = sum + ((s1+s2+s3)-(t1+t2+t3))+ (s1+s2+s3)/(t1+t2+t3+1);
  }
  
  sum = sum + s4/s1;

  if (sum == ANS) {
    printf("OK \n");
  }
  else {
    printf("NG: sum = %d\n",sum);
  }
}

