#include <stdio.h>

class DERIVED;

class BASE {
 public: 
  int b_mem; 
  BASE(){ b_mem = 5;}
  operator DERIVED();
}b_obj;

class DERIVED : public BASE{
 public: 
  int d_mem;
  DERIVED() { }
};
DERIVED                d_obj;

BASE::operator DERIVED(){
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

void F011001();
int main()
{
  F011001();
}

void F011001()
{
  DERIVED dobj;
  BASE bobj;
  dobj = bobj;
  if (dobj.b_mem == 20 && bobj.b_mem == 15)
    printf("ok\n");
  else
    printf("ng dobj.b_mem=%d bobj.b_mem=%d \n", dobj.b_mem, bobj.b_mem);
}
