subroutine sub01(arg1) bind(C)
  integer,value :: arg1
  if ( 100 .ne. arg1) print *,'ng1'
end subroutine

subroutine sub02(arg1) bind(C)
  integer,value :: arg1
  if ( 200 .ne. arg1) print *,'ng2'
end subroutine

integer function func01() bind(C)
  func01 = 100
end function

integer function func02() bind(C)
  func02 = 200
end function
interface
  subroutine proc01(arg1) bind(C)
    integer,value :: arg1
  end subroutine
  subroutine proc02(arg1) bind(C)
    integer,value :: arg1
  end subroutine
  integer function proc03() bind(C)
  end function
  integer function proc04() bind(C)
  end function
end interface

procedure(proc01) :: sub01
procedure(proc02) :: sub02
procedure(proc03) :: func01
procedure(proc04) :: func02
call sub01(100)
call sub02(200)
if ( 100 .ne. func01()) print *,'ng3'
if ( 200 .ne. func02()) print *,'ng4'
print *,'ok'
end
