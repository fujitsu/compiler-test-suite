  type t
    integer :: e(4)=2
  end type t
  type(t), volatile :: f
  call test (f%e(::2)) 
  if(any(f%e(::2)/=3)) print*,101
  if(any(f%e(2::2)/=2)) print*,102
contains
  subroutine test(v)
    integer, asynchronous :: v(:)
    v=3
    print*,'pass'
  end subroutine 
end 
