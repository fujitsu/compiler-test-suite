

#include <stdio.h>

static int dtorwatch_val = 0;

class Dtorwatch {
	int n;
public:
	Dtorwatch(int in) { n = in; }
	~Dtorwatch() { dtorwatch_val = n; }
	operator int () const { return n; }
};
int main()
{
        int count = 0;
	dtorwatch_val = 0;
	int i = 1;

	if (i)
		for ( Dtorwatch j (3); i < 2; ++i )
		{
			if( i == 1 )
                            count++;
                        else
                            printf("ng i : %d \n", i);
		}

	if( dtorwatch_val == 3 )
            count++;
        else
            printf("ng dtorwatch_val : %d \n", dtorwatch_val);

        if( count == 2 ) printf("ok\n");
}
