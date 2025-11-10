struct X {
  X(){};
               
               
               
               
  X(int i){};    
  
  int data;
};


int main()
{
  X x1;
  X x2(1);
  X x3(x1);
}
