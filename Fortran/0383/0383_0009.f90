subroutine proc(arg1,arg2)
  procedure(integer),pointer,intent(out) :: arg1
  procedure(integer),pointer,intent(inout) :: arg2
  integer,external :: func01,func02
  arg1=>func01
  arg2=>func02
end subroutine

integer function func01()
  func01 = 100
end function
integer function func02()
  func02 = 200
end function

module mod01
  procedure(integer),pointer :: aaa
  procedure(integer),pointer :: bbb
  protected :: aaa,bbb
  contains
  subroutine msub01()
    interface
      subroutine proc(arg1,arg2)
        procedure(integer),pointer,intent(out) :: arg1
        procedure(integer),pointer,intent(inout) :: arg2
      end subroutine
    end interface
    call proc(aaa,bbb)
    print *,aaa()
    print *,bbb()
  end subroutine
end module

use mod01
call msub01()
print *,'ok'
end 
