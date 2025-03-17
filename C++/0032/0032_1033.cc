

#include <stdio.h>

struct X_132p91 {
	static int k;
	int i;
	X_132p91(int ii) : i(ii) { ++k; }
	~X_132p91() { --k; }
};

int X_132p91::k = 0;

int f_132p91(const X_132p91 &x)
{
	return x.i;
}
int main()
{
        int count = 0;  

	if( X_132p91::k == 0 )
            count++;
        else
            printf("ng-1 X_132p91::k : %d \n", X_132p91::k); 

	{
		if( f_132p91(5) == 5 )
                    count++;
                else
                    printf("ng-2 f_132p91(5) : %d \n", f_132p91(5)); 
	}

	if( X_132p91::k == 0 )
            count++;
        else
            printf("ng-3 X_132p91::k : %d \n", X_132p91::k); 

	{
		float f = 4.0;
		if( f_132p91(f) == 4 )
                    count++;
                else
                    printf("ng-4 f_132p91(f) : %d \n", f_132p91(f)); 
	}

	if( X_132p91::k == 0 )
            count++;
        else
            printf("ng-5 X_132p91::k : %d \n", X_132p91::k); 

	{
		volatile int n = 6;
		if( f_132p91(n) == 6 )
                    count++;
                else
                    printf("ng-6 f_132p91(n) : %d \n", f_132p91(n)); 
	}

	if( X_132p91::k == 0 )
            count++;
        else
            printf("ng-7 X_132p91::k : %d \n", X_132p91::k); 

        if( count == 7 ) printf("ok\n");
}
