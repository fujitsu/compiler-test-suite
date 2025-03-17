  class  basic_ostream;
  class  basic_ios 
  { 
  public:
    typedef basic_ostream      ostream_type;
    typedef basic_ostream      *ostream_type_ptr;
  private:
    ostream_type         *__tiestr;   
    ostream_type_ptr     __tiestr_ptr;   
  };
  class  basic_ostream :  public basic_ios
  { };

class RWQETest{
 public:
 int outStream();
 char * xxx;
 basic_ostream    outStream_;
};
int   RWQETest::outStream(){
  int i;
  xxx="test";
  i=0;
  return i;
}
RWQETest obj;
#include <stdio.h>
int main(){
 obj.outStream();

 puts("ok");
}
