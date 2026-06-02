module m
 type ttt
  contains
  procedure,nopass::ppp=>fun
  procedure,nopass::ppp2=>fun2
  generic :: gnr=>ppp, ppp2
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

 subroutine s1
 type(ttt),parameter::sss=ttt()
 integer::xxx(sss%gnr(4))
 integer::xxx2(sss%gnr(4.0))
 if(size(xxx)/=4) print*,101,size(xxx)
 if(size(xxx2)/=6) print*,102,size(xxx2)
 end subroutine

end

 use m
 call s1
 print *,'pass'
end

