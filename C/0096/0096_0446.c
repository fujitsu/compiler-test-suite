#include  <stdio.h>
 
 int    err=0;
int main()
 {
#ifdef __STDC__
	void          func(int *),errcheck();
#else
	void          func(),errcheck();
#endif
        static int    b;
        int          *a;
        printf("********  START **************\n");
        b=5;
        a=&b;
        func(a);
        errcheck();
        printf("********  END ****************\n");
 }
 void   func(c)
        int          *c;
 {
        int           d;
        d=5;
        d=d+*c;
        if(d!=10)
          err++;
 }
 void   errcheck()
    {
           if(err==0)
            {
             printf("***    OK                       ***\n");
            }
           else
            {
             printf("***    NG                       ***\n");
            }
 }
