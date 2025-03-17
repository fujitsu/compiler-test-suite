

#include <stdio.h>

static int dtorwatch_val = 0;

class Dtorwatch {
	int n;
public:
	Dtorwatch(int in) { n = in; }
	~Dtorwatch() { dtorwatch_val = n; }
};
int main()
{
	dtorwatch_val = 0;

	{ 
		const Dtorwatch &rd1 = 1;
	}

	if( dtorwatch_val == 1 )
            printf("ok\n");
        else
            printf("ng dtorwatch_val : %d \n", dtorwatch_val );
}
