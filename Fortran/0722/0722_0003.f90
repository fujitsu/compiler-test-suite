integer function func01()
  func01 = 100
end function
subroutine proc01(arg1,arg2)
  integer,pointer,intent(out) :: arg1
  integer,pointer,intent(inout) :: arg2
  integer,target :: ttt = 100
  arg1=>ttt
  arg2=>ttt
end subroutine
subroutine proc02(arg1,arg2)
  procedure(integer),pointer,intent(out) :: arg1
  procedure(integer),pointer,intent(inout) :: arg2
  integer,external :: func01
  arg1=>func01
  arg2=>func01
end subroutine
subroutine proc03(arg1,arg2)
  integer,external,pointer,intent(out) :: arg1
  integer,external,pointer,intent(inout) :: arg2
  integer,external :: func01
  arg1=>func01
  arg2=>func01
end subroutine

module mod
  integer,pointer :: aaa
  integer,pointer :: bbb
  procedure(integer),pointer :: ccc
  procedure(integer),pointer :: ddd
end module
use mod
interface
  subroutine proc01(arg1,arg2)
    integer,pointer,intent(out) :: arg1
    integer,pointer,intent(inout) :: arg2
  end subroutine
  subroutine proc02(arg1,arg2)
    procedure(integer),pointer,intent(out) :: arg1
    procedure(integer),pointer,intent(inout) :: arg2
  end subroutine
  subroutine proc03(arg1,arg2)
    integer,external,pointer,intent(out) :: arg1
    integer,external,pointer,intent(inout) :: arg2
  end subroutine
end interface
call proc01(aaa,bbb)
print *,aaa,bbb
call proc02(ccc,ddd)
print *,ccc(),ddd()
call proc03(ccc,ddd)
print *,ccc(),ddd()
end 
