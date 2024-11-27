#include <stdio.h>
int strcomp(char *s1, char *s2);
 char  *(*f4())[]
 {
 static char  *c[2] = { "abc", "123" };
 char  *(*cp)[] = (char *(*)[])c;
 return cp;
 }
int main()
 {
 char  *((*f4())[]);
 char  *(*cp)[];

 cp = f4();
 if (strcomp((*cp)[0],"abc") )
   printf("ng\n");
 else
   printf("ok\n");
 }

int strcomp(s1,s2)
char *s1,*s2;
{
    int j;
    while (!(j = *s1 - *s2) && *s1++)
        s2++;
    return(j);
}
