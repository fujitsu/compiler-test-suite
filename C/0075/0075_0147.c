
#include <stdio.h>
int main()
  {
    char a[]="123456789012";
    FILE *fp;
    fp = fopen("fsf04.data","a");
    printf("return=%d\n",fprintf(fp,"%s\n",a));
    fclose(fp);
    remove("fsf04.data");
  }    
