call sub()
end

subroutine sub
  type t
    integer :: e(4)=5
  end type t

  type(t), volatile :: f
  integer, asynchronous :: a(4)=2
  integer, volatile :: c(4)=4

  call test (a,f%e,c)
contains
  subroutine test(u, v, w)
    integer, asynchronous :: u(:), v(:)
    integer, volatile :: w(:)
    contiguous :: u
    print*, u,v,w,'pass'
  end subroutine test
end subroutine 
