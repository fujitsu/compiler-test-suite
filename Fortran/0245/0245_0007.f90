  integer, pointer, asynchronous :: a(:)
  call test (a)
  if(any(a/=3)) print*,101 

contains
  subroutine test(u)
    integer, pointer,asynchronous :: u(:)
    allocate(u(3))
    u=3
    print*,'pass'
  end subroutine test
end
