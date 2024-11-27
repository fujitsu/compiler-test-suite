#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <string.h>
int main()
 {
 int    i,j,k;
 char  s[]  ="abcdefghijklmnopqrstuvwxyz";
 char  t[]  ="01234567890123456789012345";
 char  u[]  ="                          ";
 char  s1[] ="                          ";
 char  t1[] ="                          ";
     printf("<<<<<<<< SCQTP08 START >>>>>>>>\n");
     i=j=k=0;
     strcpy(s1,s);
     strcpy(t1,t);
     strcpy(u,t);
     strcpy(t,s);
     strcpy(s,u);
     printf("S =%s \n",s);
     printf("T =%s \n",t);
     if (strcmp(s1,t) == 0 && strcmp(t1,s) ==0)
       printf("******** OK 1  ********\n");
     else
       printf("???????? NG 1  ????????\n");
     while(s[i]!='\0' || t[j]!='\0' || u[k]!='\0')
     {
            u[k]=t[j];
            t[j]=s[i];
            s[i]=u[k];
            i++; j++; k++;
     }
     printf("S =%s \n",s);
     printf("T =%s \n",t);
     if (strcmp(s1,s) == 0 && strcmp(t1,t) ==0)
       printf("******** OK 2  ********\n");
     else
       printf("???????? NG 2  ????????\n");
     printf("<<<<<<<< SCQTP08   END >>>>>>>>\n");
exit (0);
 }
