#include <stdio.h>

class DERIVED;

class BASE_BASE {
 public: 
  int bb_mem; 
  BASE_BASE(){ bb_mem = 5;}
  operator DERIVED();
}bb_obj;

class BASE : public BASE_BASE{
 public: 
  int b_mem; 
  BASE(){ b_mem = 0;}
}b_obj;

class DERIVED : public BASE{
 public: 
  int d_mem;
  DERIVED() { }
};
DERIVED                d_obj;

BASE_BASE::operator DERIVED(){
    this->bb_mem += 10;
    if (this->bb_mem == 15)
      {
	d_obj.bb_mem = this->bb_mem + 5;
	return d_obj;
      }
    else
      {
	printf("ng\n");
	return *((DERIVED*)this);
      }
}

void F011017();
int main()
{
  F011017();
}

void F011017()
{
  DERIVED dobj;
  BASE_BASE bbobj;
  dobj = bbobj;
  if (dobj.bb_mem == 20 && bbobj.bb_mem == 15)
    printf("ok\n");
  else
    printf("ng\n");
}
