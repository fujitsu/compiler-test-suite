#include <stdio.h>
void sub();
int main() {
  union utag {
    int a;
    int b;
  } u;
  int ar[10],br[10],s,i;
  s=0;
  sub( ar , br );
  for ( i=2; i<10; i++) {
    u.a = i*10;
    if ( ar[i] == 0 ) {
      u.a = ar[i];
    } else {
      br[i] = u.b;
      u.a = ar[i]*br[i-1];
    }
    s = s + br[i]*u.a*u.b;
  }
  if ( s == 116802720 ) {
    printf("P085183 is OK\n");
  } else {
    printf("P085183 is NG\n");
    printf("s=%d\n",s);
  }
}

void sub(a,b) 
     int a[10],b[10];
{
  int i;
  for (i=0;i<10;i++) {
    a[i]=i+1;
    b[i]=i+1;
  }
}
