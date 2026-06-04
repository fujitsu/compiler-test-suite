subroutine sub01(arg1)
  integer :: arg1
  if ( 100 .ne. arg1 ) print *,'fail'
end subroutine
subroutine sub02(arg1)
  integer :: arg1
  if ( 200 .ne. arg1 ) print *,'fail'
end subroutine
interface
  subroutine proc(arg1)
    integer :: arg1
  end subroutine
end interface
procedure(proc),pointer :: ppp => null()
procedure(proc) :: sub01
ppp=>sub01
call ppp(100)
call msub()
print *,'ok'
contains 
subroutine msub()
  procedure(proc) :: sub02
  ppp=>sub02
  call ppp(200)
end subroutine
end
