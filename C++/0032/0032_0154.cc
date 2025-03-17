

extern "C" void printf(char*,...);
        class AA {
         protected:
          class BB {
	     public:
              int bb;
              BB(){bb=10;}
            };
        };
        class CC : public AA {
        public:
        int f(){ AA::BB x;
             return x.bb==10;
            } 
        };

int main(){
  CC obj;
  if (obj.f())
     printf("ok\n");
  else
     printf("ng\n");
}
