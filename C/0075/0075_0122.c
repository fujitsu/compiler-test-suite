#include <stdio.h>
int SUB(int *a);
static int ARY[]={0,0,0,0,0,0,0,0,0,0};
int main() {
  int Z,IX,IX2,SUM=0;
  SUB(&Z);
  IX=0;
  for( Z=10;(Z+50)<100;Z+=5 ) {
    ARY[IX]=Z;
    IX=IX+1;
  }
  for ( IX2=0; IX2<IX; IX2++) {
    SUM=SUM+ARY[IX2];
  }
  if ( SUM == 220 ) 
    printf("P080127 OK\n");
  else {
    printf("P080127 NG\n");
    printf("SUM=%d\n",SUM);
  }
}
int SUB(a)
int *a;
{
  *a=-20;
}
