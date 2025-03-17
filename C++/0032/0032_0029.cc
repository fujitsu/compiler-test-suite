#include <stdio.h>

class DERIVED;

class BASE {
 public: 
  int b_mem; 
  BASE(){ b_mem = 5;}
  BASE(int i){ b_mem = i;}
  operator const DERIVED() const;
}b_obj;

class DERIVED : public BASE{
 public: 
  int d_mem;
  DERIVED() { d_mem=1; }
  DERIVED(int i) { d_mem=i; }
};
DERIVED const        d_obj_c(12);

BASE::operator const DERIVED() const {

    if (this->b_mem == 2)
      {
	return d_obj_c;
      }
    else
      {
	printf("ng\n");
	return *((DERIVED const*)this);
      }
}

void F011006();
int main()
{
  F011006();
}

void F011006()
{
  BASE const bobj_c(2);
  DERIVED const dobj_c = bobj_c;
  DERIVED const dobj_c2(5);
  DERIVED const dobj_i = dobj_c2;


  if (bobj_c.b_mem == 2 && dobj_c.d_mem == 12 &&
      dobj_c2.d_mem == 5 && dobj_i.d_mem == 5)
    printf("ok\n");
  else
    printf("ng\n");
  
}
