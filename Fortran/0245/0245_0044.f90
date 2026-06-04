call sub()
end

subroutine sub
  type t
    integer,pointer :: e(:)
  end type t
  type(t), volatile :: f
  integer, pointer, asynchronous :: a(:), b(:)
  integer,pointer, volatile :: c(:), d(:)

  allocate(a(4),b(4),c(4),d(4),f%e(4))

  call test2(a,b)
  call test3(a,b)
  call test2(c,d)
  call test3(c,d)
  call test2(f%e,d)
  call test3(c,f%e)
  print*,'pass'
contains
  subroutine test2(x,y)
    integer, asynchronous :: x(:)
    integer, volatile :: y(:)
    x=2
    y=3
    print*,x,y
  end subroutine test2
  subroutine test3(x,y)
    integer, pointer, asynchronous :: x(:)
    integer, pointer, volatile :: y(:)
    x=2
    y=3
    print*,x,y
  end subroutine test3
end subroutine sub
