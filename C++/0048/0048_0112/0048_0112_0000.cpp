#include "000.h"

void func(){
  NS1::C1<int> c1;
  c1.member_func();
  NS1::C1<int>::member_class c1_mem_class;
  c1_mem_class.hello();
  NS1::C1<int>::member_enum mem_enum = NS1::C1<int>::member_enum::typeB;
  if(mem_enum == NS1::C1<int>::member_enum::typeB){
    std::cout << "C1 member_enum = typeB" << std::endl;
  }
  NS1::C1<int>::static_data_member = 100;
  std::cout << "C1 static_data_member = " << NS1::C1<int>::static_data_member << std::endl;
  NS1::C1<int>::member_template<double> c1_mem_template;
  c1_mem_template.hello();
}
