class c_114p11a {
public:
	int i;                         
	enum { E_114p11a=1 };          
	struct c_114p11a_nest {        
		int i;
		c_114p11a_nest(int ii) : i(ii) { }
		c_114p11a_nest() : i(0) { }
	};
	c_114p11a_nest m;
	c_114p11a(int ii) : i(ii) , m(ii) { }

	friend c_114p11a_nest (*affa(c_114p11a *p))[E_114p11a]; 

};

c_114p11a::c_114p11a_nest (*affa(c_114p11a *p))[c_114p11a::E_114p11a]
{
	c_114p11a::c_114p11a_nest c1[1];
	&p;
	return &c1;
}

#include <stdio.h>
int main() { 
  puts("ok");
}



