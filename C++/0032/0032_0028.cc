#include <stdio.h>

class DERIVED;

class BASE {
 public: 
  int b_mem; 
  BASE(){ b_mem = 5;}
  operator const DERIVED();
}b_obj;

class DERIVED : public BASE{
 public: 
  int d_mem;
  DERIVED() { }
};
DERIVED                d_obj;

BASE::operator const DERIVED(){
    this->b_mem += 10;
    if (this->b_mem == 15)
      {
	d_obj.b_mem = this->b_mem + 5;
	return d_obj;
      }
    else
      {
	printf("ng\n");
	return *((DERIVED*)this);
      }
}

void F011005();
int main()
{
  F011005();
}

void F011005()
{
  BASE bobj;
  DERIVED dobj;
  const DERIVED dobj_c = bobj;

  if (dobj_c.b_mem == 20 && bobj.b_mem == 15)
    printf("ok\n");
  else
    printf("ng\n");
}
