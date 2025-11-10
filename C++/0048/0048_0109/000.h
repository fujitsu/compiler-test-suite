

namespace NS1{
  template<template<typename T> class U>
  class C1{
    public:
      C1(U<int> member) : member(member) {}

      int getMember(){
        return member.getMember();
      }

    private:
      U<int> member;
  };
}

