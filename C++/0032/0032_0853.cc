
extern "C" void printf(char*,...);
class T1 {
public: int t1;
};

class T2 : public T1 {
 public:
};

template <class T> class REF {
 public:
        int ref;
        REF(T* p){ref = p-> t1;}
      };


void
f(REF<T1> p) {
  if (p.ref) printf("ok\n");
  else printf("ng\n");
}
int main()
{
        T2* obj = new T2;
        obj->t1 = 10; 
        REF<T1> t(obj);         
        f(obj);                 
	}
