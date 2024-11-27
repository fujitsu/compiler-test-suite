module test_module
  procedure(),pointer :: test
end module test_module

module test_module2
  use test_module
contains
  subroutine sub2
    call test()
  end subroutine sub2
end module test_module2

print *,'pass'

end 
