
#include <stdio.h>

int count = 0;


int m932p12ac = 0;
class c932p12a {
public:
	class inner { public: int f3() { return m932p12ac; }; } in;
	c932p12a(int i) { m932p12ac = i+3; }
	static int m932p12ac;
};

int c932p12a::m932p12ac;

static void s932p12a()
{
	c932p12a o (0);
	if(o.in.f3() == 3) 
            count++;
        else
            printf("ng <932p12a> o.in.f3() : %d \n", o.in.f3());
}



int m932p12bc = 0;
class c932p12b {
public:
	class inner2 { public: int f3() { return m932p12bc; }; } in;
	c932p12b(int i) { m932p12bc = i+THREE; }
	static int m932p12bc;
	enum {ZERO, ONE, TWO, THREE};
};

int c932p12b::m932p12bc;

static void s932p12b()
{
	c932p12b o (0);
	if(o.in.f3() == 3)
            count++;
        else
            printf("ng <932p12b> o.in.f3() : %d \n", o.in.f3());
}




int f932p21a() { return 0; }

static void s932p21a()
	{
	class c932p21a {
	public:
		class inner3 { public: int f3() { return f932p21a(); }; } in;
                c932p21a(int i) { }
		static int f932p21a() { return 3; }
	};
	c932p21a o (0);
	if(o.in.f3() == 3)
            count++;
        else
            printf("ng <932p21a> o.in.f3() : %d \n", o.in.f3());
}



enum { m932p21bc = 0 };

static void s932p21b()
{
class c932p21b {
public:
	class inner4 { public: int f3() { return m932p21bc; }; } in;
	c932p21b(int i) { }
	enum { m932p21bc = 3 };
private:
	enum {ZERO, ONE, TWO, THREE};
};

	c932p21b o (0);
	if(o.in.f3() == 3)
            count++;
        else
            printf("ng <932p21b> o.in.f3() : %d \n", o.in.f3());
}
int main()
{
	s932p12a();
	s932p12b();
	s932p21a();
	s932p21b();

        if( count == 4 ) printf("ok\n");
}
