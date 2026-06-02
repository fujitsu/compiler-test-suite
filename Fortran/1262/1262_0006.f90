module m
 type ttt
  contains
  procedure,nopass::ppp=>fun
  procedure,nopass::ppp2=>fun2
  generic :: gnr=>ppp, ppp2
 end type

 type,extends(ttt) :: t2
  contains
  procedure,nopass::p2=>fun3
  generic :: gnr=>p2
 end type

 contains

 pure function fun(d1) result(i)
 real,intent(in) :: d1
 i=int(d1)+2
 end function

 pure function fun2(dd1) result(i2)
 integer,intent(in) :: dd1
 i2=dd1
 end function

 pure function fun3(dd1) result(i3)
 character(len=*),intent(in) :: dd1
 i3=len(dd1)+1
 end function

 subroutine s1(sss)
 class(ttt)::sss
 integer::xxx(sss%gnr(4))
 integer::xxx2(sss%gnr(4.0))
 if(size(xxx)/=4) print*,101,size(xxx)
 if(size(xxx2)/=6) print*,102,size(xxx2)
 end subroutine

 subroutine s2()
 character(len=4),parameter :: ch='abcd'
 type(t2) :: taa1 
 integer::xxx(taa1%gnr(ch))
 if(size(xxx)/=5) print*,101,size(xxx)
 end subroutine

end

 use m
 type(ttt),parameter :: a1 = ttt()
 call s1(a1)
 call s2()
 print *,'pass'
end

