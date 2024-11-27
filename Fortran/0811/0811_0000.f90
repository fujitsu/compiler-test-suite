module test_module
 procedure(),pointer :: test
 integer :: aaa
end module test_module
module test_module_a
  use test_module,only:test,aaa
end 

  use test_module_a
  use test_module
  implicit none
    aaa=1
    call test()
end
