
#include<stdio.h>
int main()
 {
  char a[5]="*OK*" ;
  char b[5]="*OK*" ;
  FILE *fp ;
  fp = fopen("fsf07.tst","w");
  printf("return=%d\n",fprintf(fp,"%s %s",a,b));
  fclose(fp);
  remove("fsf07.tst");
  }
