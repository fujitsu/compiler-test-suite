#include  <stdio.h>
int main()
{
int   x  ;
int   y[21]  ;
int   z  ;
int   ok  ;
int   sub1(int a)  ;
    printf ("<<<< start >>>>\n");
    ok=0 ;
    for (x = 0 ;
         x <= 20;
         x += 2)
     {
        y[x]=x*1/2 ;
     }
    for (x = 1 ;
         x <= 19;
         x += 2)
     {
        y[x]=x*3+1 ;
     }
    for (x = 0 ;
         x <= 20;
         x += 1)
     {
        z=y[x] ;
        y[x]=-1 ;
        y[x]=sub1(x) ;
        if ((z!=y[x]))
         {
            printf ("???? ng ????\n");
            printf ("***  z=%d,y[x]=%d ***\n",z,y[x]);
            ok=1 ;
            goto jul00001 ;
         }
     }
jul00001 : ;
    if ((ok=0))
     {
        printf ("*** ok ***\n");
     }
    printf ("<<<< end >>>>\n");
}
int  sub1(int a)
{
    if ((a%2==0))
     {
        printf ("arg=%d:even*1/2->%d\n",a,a/2);
        return a/2 ;
     }
    else
     {
        printf ("arg=%d:odd*3+1->%d\n",a,a*3+1);
        return a*3+1 ;
     }
}
