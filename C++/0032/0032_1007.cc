class c_128p21_enclose {
public:
	class c_128p21 {
	public:
		int i;
		c_128p21(int n) { i = n; }
		c_128p21() { i = 0; }
	};

	class d_128p21 : public c_128p21 {
	public:
		c_128p21 c1;
	}; 
};

#include <stdio.h>
int main() { 
  puts("ok");
}



