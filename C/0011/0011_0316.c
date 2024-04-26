#include  <stdio.h>
#include  <string.h>
void strct(char *s, char *t);

static char result[12]="stringjapan";
int main()
{
     char buf[12];
     char dumy[12];

     strcpy(buf,"string");
     strcpy(dumy,"japan");
     strct(buf,dumy);
     if(strcmp(buf,result) == 0)
           printf(" test ==> ok\n");
     else
           printf(" test ==> ng\n");
}
void strct(char *s, char *t)
{
     while(*s != '\0')
           (void)*s++;
     while((*s++ = *t++) != '\0')
               ;
}
