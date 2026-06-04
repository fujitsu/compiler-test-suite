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

 subroutine s1
 type(ttt),parameter::sss=ttt()
 integer::xxx(sss%ppp())
 type(t2),parameter::sss2=t2(2.0)
 integer::xxx2(sss2%ppp())
 if(size(xxx)/=2) print*,101
 if(size(xxx2)/=4) print*,102
 end subroutine

end

 use m
 call s1
 print *,'pass'
end

