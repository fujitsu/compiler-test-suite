module test_module

  procedure(),pointer :: test
integer::n=0

end module test_module

program main

  use test_module
  implicit none
  write(7,*) 'test'
call set
  call test()
if (n/=1) print *,101
print *,'pass'
end program

subroutine set
 use test_module
 interface
  subroutine sub
  end subroutine
 end interface
 test=> sub
end
  subroutine sub
 use test_module
n=n+1
  end subroutine
