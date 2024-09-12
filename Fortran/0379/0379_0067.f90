subroutine sub01(arg1) bind(C,name="abc")
  integer :: arg1
  if ( 100 .ne. arg1 ) print *,'ng1'
end subroutine

subroutine sub02(arg1) bind(C,name="def")
  integer :: arg1
  if ( 200 .ne. arg1 ) print *,'ng2'
end subroutine

integer function func01() bind(C,name="ghi")
  func01 = 100
end function

integer function func02() bind(C,name="jkl")
  func02 = 200
end function
interface
  subroutine proc01(arg1) bind(C,name="jkl")
    integer :: arg1
  end subroutine
  subroutine proc02(arg1) bind(C,name="ghi")
    integer :: arg1
  end subroutine
  integer function proc03() bind(C,name="def")
  end function
  integer function proc04() bind(C,name="abc")
  end function
end interface

procedure(proc01),bind(C,name="abc") :: sub01
procedure(proc02),bind(C,name="def") :: sub02
procedure(proc03),bind(C,name="ghi") :: func01
procedure(proc04),bind(C,name="jkl") :: func02
call sub01(100)
call sub02(200)
if ( 100 .ne. func01() ) print *,'ng3'
if ( 200 .ne. func02() ) print *,'ng3'
print *,'ok'
end
