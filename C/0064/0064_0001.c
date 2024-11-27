

#include <stdio.h>
int main(){
  unsigned char Buc;
  unsigned char *pBuc=&Buc;
  unsigned short Aus;

  *pBuc = 21; Aus = 22;
  *pBuc -= Aus;

   printf("%d\n",*pBuc);
}
