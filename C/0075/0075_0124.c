#include <stdio.h>
int sub(int x,int y);
int main() {
  int x=10, y=100;
  sub(x,y);
}
int sub(x,y) int x,y;
{
  int z;
  z = (-x)+(-y);
  if ( z == -110 ) {
    printf("P080455 is OK\n");
  } else {
    printf("P080455 is NG\n");
    printf("%d,\n",z);
  }
}
