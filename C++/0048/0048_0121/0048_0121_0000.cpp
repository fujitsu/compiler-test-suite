#include "000.h"

void func(){
  C1<int> c1;
  c1.member_func();
  C1<int>::member_class c1_mem_class;
  c1_mem_class.hello();
  C1<int>::member_enum mem_enum = C1<int>::member_enum::typeB;
  if(mem_enum == C1<int>::member_enum::typeB){
    std::cout << "C1 member_enum = typeB" << std::endl;
  }
  C1<int>::static_data_member = 100;
  std::cout << "C1 static_data_member = " << C1<int>::static_data_member << std::endl;
  C1<int>::member_template<double> c1_mem_template;
  c1_mem_template.hello();
}
