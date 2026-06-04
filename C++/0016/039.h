 

struct ADDR1 {
	static int a1;
	char a2;
	double a3;
	static int *a4;
};

int ADDR1::a1=10;
int * ADDR1::a4;

class ADDR2 {
	public:
		long b1;
		unsigned int b2;
		static char b3[10];
};

char ADDR2::b3[10];
