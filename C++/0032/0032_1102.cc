#include <stdio.h> 

class B1 {};

class B2 {
 public:
    int i;
};

class D : public B1 , public B2 { } d;

int D::*pmi;

int main() {
  d.B2::i=2;
  pmi=&D::i; 
  d.*pmi;
  if (d.*pmi == 2)
	printf("ok\n");
  else	
	printf("ng D::i(%x) => %d\n",pmi,d.*pmi); 	
  return 0;
 }
