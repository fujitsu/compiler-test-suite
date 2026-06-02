call sub()
end

subroutine sub
  type t
    integer :: e(4)
  end type t

  integer, asynchronous :: a(4)=2, b(4)=3
  integer, volatile :: c(4)=4

 call test (a,b,c)
contains
  subroutine test(u, v, w)
    integer, asynchronous :: u(:), v(:)
    integer, volatile :: w(:)
    contiguous :: u,w
    print*, u,v,w,'pass'
  end subroutine test
end subroutine 
