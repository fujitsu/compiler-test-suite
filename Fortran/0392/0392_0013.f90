  integer, pointer, asynchronous :: a(:)=>null()
  call test (a)
  call test2 (a)
print *,'pass'

contains
  subroutine test(u)
    integer, optional, asynchronous :: u(:)
  end subroutine test
  subroutine test2(u)
    integer, asynchronous,pointer :: u(:)
  end subroutine test2
end
