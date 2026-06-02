integer, pointer, asynchronous :: a(:)
allocate(a(4))
  call test (a) 
print*,"pass"
contains
  subroutine test(u)
    integer :: u(..)
    contiguous :: u
    if(rank(u)/=1)print*,101
    if(is_contiguous(u).neqv. .true.)print*,102
  end subroutine test
end

