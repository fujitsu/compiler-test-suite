module mod
  integer,protected,pointer :: ppp1
  integer,protected,pointer :: ppp2
  integer,target :: t1 = 100
  integer,target :: t2 = 200
  contains
  subroutine sub01(arg1,arg2)
    integer,pointer,intent(out) :: arg1
    integer,pointer,intent(inout) :: arg2
    arg1=>t1
    arg2=>t2
  end subroutine
  function func01(arg1,arg2) result(ret)
    integer,pointer,intent(out) :: arg1
    integer,pointer,intent(inout) :: arg2
    integer :: ret
    arg1=>null()
    arg2=>null()
    ret = 100 
  end function
  subroutine sub02()
    call sub01(ppp1,ppp2)
  end subroutine
  subroutine sub03(arg1,arg2)
    integer,pointer :: arg1
    integer,pointer :: arg2
    print *, func01(arg1,arg2)
  end subroutine
end module

use mod
integer,pointer :: p1
integer,pointer :: p2
call sub02
print *,ppp1
print *,ppp2
p1=>ppp1
p2=>ppp2
call sub03(p1,p2)
print *,'ok'
end
