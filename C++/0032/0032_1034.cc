

#include <stdio.h>

static int dtorwatch_val = 0;

class Dtorwatch {
	int n;
public:
	Dtorwatch(int in) { n = in; }
	~Dtorwatch() { dtorwatch_val = n; }
	operator int () const { return n; }
};

static Dtorwatch d1 (1);

static void s66p2b() { d1 = Dtorwatch(4); } 
int main()
{
        int count = 0;
	dtorwatch_val = 0;
	s66p2b();

	if( dtorwatch_val == 4 )
            count++;
        else
            printf("ng1 dtorwatch_val : %d \n", dtorwatch_val);

	{
 		dtorwatch_val = 0;
		const Dtorwatch &dr = Dtorwatch(5); 
	}

	if( dtorwatch_val == 5 )
            count++;
        else
	  printf("ng2 dtorwatch_val : %d \n", dtorwatch_val);
	
        if( count == 2 ) printf("ok\n");
}
