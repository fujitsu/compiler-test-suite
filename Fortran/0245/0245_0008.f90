  integer, pointer, asynchronous :: a(:)
  allocate(a(3))
  call test (a)
  if(any(a/=3)) print*,101 
contains
  subroutine test(u)
    integer, asynchronous :: u(:)
    u=3
    print*,'pass'
  end subroutine test
end
