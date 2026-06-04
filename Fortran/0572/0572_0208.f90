integer, pointer, asynchronous :: a(:)
allocate(a(10))
  call test (a) 

contains
  subroutine test(u)
    integer :: u(..)
    contiguous :: u
    if(ubound(u,1)/=10)print*,101
    print*,"PASS"
  end subroutine test
end


