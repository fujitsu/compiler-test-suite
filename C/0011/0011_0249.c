#include  <stdio.h>

int main()
{
       long int             x,y,i;
       signed short int     i2;
       signed long int      i4;
       signed long long int i8;
       printf("<<<< START >>>>\n");
       i2=i4=i8=0;
       for (i=0;i<=50;i++)
       {
         x=i;
         y=i+1;
         if ((x%2!=0))
         {
           i2=x*x+2*x+1;
           i4=y*y+2*y+1;
           i4=i2+i4;
           i8=i4;
           i8=i4+x*x+2*x+1;
           if (i2==x*x+2*x+1  &&  i4==x*x+2*x+y*y+2*y+2  &&
               i8==2*x*x+4*x+y*y+2*y+3  )
            printf("****    OK          ***\n");
           else
            printf("????    NG          ???\n");
           printf("**** i2=%d,i4=%ld,i8=%d ***\n",i2,i4,0);
         }
       }
       printf("<<<< END >>>>\n");
}
