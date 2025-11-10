struct B1 {
  B1(int);
};

struct B2 {
  B2(int);
};

struct D1 : B1, B2 {
  using B1::B1;
  
}; 


struct D2 : B1, B2 {
  using B1::B1;
  using B2::B2;
  D2(int); 
};

int main(void){

  return 0;
}
