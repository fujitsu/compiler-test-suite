 extern "C" void printf(char*,...);
 class A { public : int i; A(); ~A(); };
 A::A(){ i = 1;}
 A::~A(){ i=0;}
 class X { public: int x; X(){x=100;}};
class B : public X, public A { int j; public: B(); ~B(); };
 B::B() { j=1;}
 B::~B() {j=0;}
 void f1(A a){ printf("f1 called, a.i=%d, &a.i=%X\n", a.i,&a.i);}
 B& bf(B& x) { return x;} 
 B  bff(B x) { return x;} 
class C { public: B bo;}cobj;
 int main(){
  int er = 0;
  A aobj;
  aobj.i=5;
  B obj;
  B & rb=obj;
  cobj.bo = obj;
  C *p = &cobj;
   aobj =(A&)(0,obj);
   if (aobj.i != 1){
      printf("NG-1- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A&)(B&)obj;
   if (aobj.i != 1){
      printf("NG-2- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A)bff(obj);
   if (aobj.i != 1){
      printf("NG-3- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A)rb;   
   if (aobj.i != 1){
      printf("NG-4- aobj.i=%d\n",aobj.i);
    er++;
    }

   aobj.i=5;
   aobj = (A&)rb;   
   if (aobj.i != 1){
      printf("NG-5- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A&)(p->bo); 
   if (aobj.i != 1){
      printf("NG-6- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A)obj;   
   if (aobj.i != 1){
      printf("NG-7- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A&)obj;   
   if (aobj.i != 1){
      printf("NG-8- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A&)rb;   
   if (aobj.i != 1){
      printf("NG-9- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   B arbobj[10];
   aobj = (A&)arbobj;
   if (aobj.i != 1){
      printf("NG-10- aobj.i=%d\n",aobj.i);
    er++;
    }
   aobj.i=5;
   aobj = (A&)bf(obj);
   if (aobj.i != 1){
      printf("NG-11- aobj.i=%d\n",aobj.i);
    er++;
    }

   if (er == 0 )
      printf("ok\n");
   return 0;
 }

