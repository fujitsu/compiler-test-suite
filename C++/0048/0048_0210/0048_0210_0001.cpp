#include <cstdio>

class B
{
	int m_val;

public:
	void foo()
	{
		int copyVal = 4;

		auto f = [this, copyVal] {
			m_val = 5;
			bar();
			return copyVal * 2;
		};

		int result = f();
		if (m_val  == 5 &&
				result == 8) {
			std::puts("OK");
		}
		else {
			std::puts("NG");
		}
	}

private:
	void bar()
	{
	}
};

void sub1()
{
	B().foo();
}

