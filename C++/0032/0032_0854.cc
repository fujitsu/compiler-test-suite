extern "C" void printf(char*,...);

class T1 {
 public:
  int t1;
};
class REF {
public:
       int ref;
	REF(T1* p){ ref = p->t1;}
};


class T2 : public T1 {
 public:
  int t2;
}t2obj;
void
f(REF p) {
  if (p.ref) printf("ok\n");
  else printf("ng\n");
}
int main()
{
	T2* pt = &t2obj;
        t2obj.t1 = 10;
        f(pt);   
        (REF)pt;   
	  
}

