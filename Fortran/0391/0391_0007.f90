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
type(ttt),parameter::sss=ttt()
integer::xxx(sss%ppp())
if (size(xxx)/=2) print *,101
xxx=1
if (any(xxx/=1)) print *,201
end subroutine
end
print *,'pass'
end
