#include <stdio.h>
class AA {
public:
};

template <class T>
class REF {
public:
	REF(){}
	REF(T*){}
};


class BB : public REF<AA> {
public:
	BB();
	BB(AA*);
};
BB::BB() : REF<AA>() {}
BB::BB(AA* p) : REF<AA>(p) {} 


int main(){ printf("ok\n");}
