function fun(arg1,arg2) result (ret)
  integer,pointer,intent(inout) :: arg1(:)
  integer,pointer,intent(inout) :: arg2(:)
  integer,pointer :: ret(:)
  arg1 = 3
  arg2 = 5
  allocate(ret(10))
  ret = arg1+arg2
end function

module mod
  integer,protected,pointer :: aaa(:)
  integer,protected,pointer :: bbb(:)
  contains
  subroutine sub()
    interface
      function fun(arg1,arg2) result (ret)
        integer,pointer,intent(inout) :: arg1(:)
        integer,pointer,intent(inout) :: arg2(:)
        integer,pointer :: ret(:)
      end function
    end interface
    allocate(aaa(10),bbb(10))
    aaa = 1
    bbb = 2
    aaa = fun(aaa,bbb)
  end subroutine
end module

use mod
call sub()
if (any(aaa/=8))write(6,*) "NG"
if (any(bbb/=5))write(6,*) "NG"
print *,'pass'
end
