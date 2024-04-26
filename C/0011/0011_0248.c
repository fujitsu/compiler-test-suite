#include  <stdio.h>

int    v1,v2,v3;
void sub() ;
int main()
{
       extern  int    v1,v2,v3;
       printf("<<<<  START  >>>>\n");
       sub();
       if ((v1!=3))
         printf("????  NG  V1  ????\n");
       else
         printf("****  OK  V1  ****\n");
       if ((v2!=2))
         printf("????  NG  V2  ????\n");
       else
         printf("****  OK  V2  ****\n");
       if ((v3!=1))
         printf("????  NG  V3  ????\n");
       else
         printf("****  OK  V3  ****\n");
       if ((v1==3 && v2==2 && v3==1))
         printf("**** ALL OK  !! ****\n");
       else
         printf("???? NG!!  NG!! ????\n");
       printf("<<<<  END  >>>>\n");
}
void sub()
{
         v1=3;
         v2=2;
         v3=1;
}
