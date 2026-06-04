module m
 type ttt
 contains
 procedure,nopass::ppp=>fun
 end type
 contains

 pure function fun() result(i)
 i=2
 end function

 subroutine s1
 type(ttt)::sss
 character(len=sss%ppp())::xxx
 if(len(xxx)/=2) print*,101
 end subroutine

end

 use m
 call s1
 print *,'pass'
end

