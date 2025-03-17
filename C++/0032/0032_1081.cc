#include <stdio.h>

static int addr=0;
class no1A {
public:
  virtual int no1Af4(void*p){return ((this==p)?1:0);} 

};

class no1B :virtual public no1A {  
public:
  int no1Ba1;

};

class no1C :virtual public no1B {   
public:
  int no1Ca1;
} ;

class no1D :virtual  public no1C {   
public:
  int no1Da1;

};

class no1E :virtual public no1D {   
public:
  int no1Ea1;
  int no1Af4(void*p){return ((this==p)?1:0);} 

};

class DUMMY {    
public:
  int ary[5];
};

class no1F :public DUMMY, public no1E {
public:

};

no1F no1Fobj;

static int no1(){
int flag = 1;
int i4;


 no1F* no1Fp = (no1F*)(&no1Fobj);
 no1E* no1Ep = (no1E*)(&no1Fobj);
 no1F*fp = &no1Fobj;
 no1E *ep = no1Ep;

 i4 =   fp->no1Af4(ep);
 if (i4) return 1;
 return flag;

}




int main(){

 if(no1()) {
   printf("ok\n");
 } else {
   printf("ng\n");
 }

return 0;
}

