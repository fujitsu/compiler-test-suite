module m
 type ttt
  contains
  procedure,nopass::ppp=>fun
 end type

 type, extends(ttt) :: t2
  real :: r = 1.0
  contains
  procedure,nopass::ppp=>fun2
 end type

 contains

 pure function fun() result(i)
 i=2
 end function

 pure function fun2() result(i2)
 i2=4
 end function

 subroutine s1(d1,dd1,q1,q2)
 integer::q1,q2
 class(ttt) :: d1,dd1
 integer::xxx(d1%ppp())
 integer::xxx2(dd1%ppp())
 q1=size(xxx)
 q2=size(xxx2)
 end subroutine

end

 use m
 type(ttt),parameter::sss=ttt()
 type(t2),parameter::sss2=t2(2.0)
 integer :: r1=0,r2=0
 call s1(sss,sss2,r1,r2)
 if(r1/=2) print*,101
 if(r2/=4) print*,102
 print *,'pass'
end

