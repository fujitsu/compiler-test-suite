#include  <stdio.h>
static char    echara[]="bcde";
char *pca=echara;
int main()
{ 
  *(pca++)+=1;

  if(echara[0]=='c')
    printf("ok\n");
  else
    printf("ng\n");
}
