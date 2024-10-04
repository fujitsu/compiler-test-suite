#include <stdio.h>
int main()
{
    struct tag {
                int  bb1;
                int  bb2;
                int  bb3;
                };

    static struct tag aa;

    static int *in1=&(aa.bb2);
    static int *in2=&aa.bb2+1;
    static int *in3=&aa.bb2-1;

    static int  sn1=1.34 +5   ;
    static int  sn2=sizeof( 1.34 );

    aa.bb1 = 5                ;
    aa.bb2 = 6                ;
    aa.bb3 = 7                ;


     if (  sn1 == 6   &&   sn2 == 8  )

           printf(" ***  TEST-1  OK  ARITHMATIC  ***\n");
        else
           printf(" ***  TEST-1  NG  ARITHMATIC  ***\n");


     if ( *in1 == 6  )

           printf(" ***  TEST-2  OK  ADDRESS     ***\n");
        else
           printf(" ***  TEST-2  NG  ADDRESS     ***\n");


     if ( *in2 == 7  )

           printf(" ***  TEST-3  OK  ADDRESS + 1 ***\n");
        else
           printf(" ***  TEST-3  NG  ADDRESS + 1 ***\n");


     if ( *in3 == 5  )

           printf(" ***  TEST-4  OK  ADDRESS - 1 ***\n");
        else
           printf(" ***  TEST-4  NG  ADDRESS - 1 ***\n");




}
