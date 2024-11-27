#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
int strct(char  *s, char  *t);
static char result[12]="iam japanese";
int main()
{
     char buf[12];
     char dumy[12];

     strcpy(buf,"iam ");
     strcpy(dumy,"japanese");
     strct(buf,dumy);
     if(strcmp(buf,result) == 0)
           printf(" test ==> ok\n");
     else
           printf(" test ==> ng\n");
exit (0);
}
int strct(s,t)
char  *s,*t;
{
     while(*s != '\0')
           *s++;
     while((*s++ = *t++) != '\0')
               ;
}
