


namespace NS1{
  template<typename T = int>
  class C1{
    public:
      C1(T member) : member(member){}
      T getMember(){
        return member;
      }

    private:
      T member;
  };
}


namespace NS2{
  template<int I = 117>
  class C2{
    public:
      C2() : member(I){}
      int getMember(){
        return member;
      }

    private:
      int member;
  };
}


namespace NS3{
  template<template<typename T> class U = NS1::C1 >
  class C3{
    public:
      C3(U<int> member) : member(member) {}
      int getMember(){
        return member.getMember();
      }

    private:
      U<int> member;
  };
}
