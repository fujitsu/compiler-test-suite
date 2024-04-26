#include  <stdio.h>

struct tag
{
 int   i;
 char  c;
 float f;
 int   j;
} st={0x0123abcd,'A',7.875,0x01234567};
int main()
{
 static int   *a=&st.i;
 static char  *b=&st.c;
 static float *c=&st.f;
 static int   *d=&st.j;

 printf("*** START ***\n");
 if(*a==0x0123abcd) printf("*** OK.01 ***\n");
   else             printf("XXX NG.01 XXX %X\n",*a);
 if(*b=='A')     printf("*** OK.02 ***\n");
   else             printf("XXX NG.02 XXX %c\n",*b);
 if(*c==7.875)      printf("*** OK.03 ***\n");
   else             printf("XXX NG.03 XXX %f\n",*c);
 if(*d==0x01234567) printf("*** OK.04 ***\n");
   else             printf("XXX NG.04 XXX %X\n",*d);
 printf("*** END ***\n");
}
