subroutine me_01()
end subroutine

module mod01
 external :: me_01
end module

module mod02
 use mod01
 procedure(),pointer :: pp1
 type ty1
  procedure(),pointer,nopass :: tpp
 end type
 type (ty1) :: tt1
 contains
  subroutine sub1()
   call sub2(me_01)
   pp1 => me_01
   tt1 =  ty1(me_01)
   call pp1()
   call tt1%tpp()
   call me_01()
  end subroutine
  subroutine sub2(out_sub)
   external :: out_sub
  end subroutine
end module

module mod03
 use mod01
 procedure(),pointer :: pp2
 type ty2
  procedure(),pointer,nopass :: tpp
 end type
 type (ty2) :: tt2
 contains
  subroutine sub3()
   tt2 =  ty2(me_01)
   pp2 => me_01
   call sub4(me_01)
   call me_01()
   call tt2%tpp()
   call pp2()
  end subroutine
  subroutine sub4(out_sub)
   external :: out_sub
  end subroutine
end module

use mod02
use mod03

call sub1()
call sub3()

print *,'pass'

end

subroutine out_sub()
 print *,'pass B'
end subroutine
