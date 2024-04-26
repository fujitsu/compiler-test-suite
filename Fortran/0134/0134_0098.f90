module m1
contains
subroutine sa(s1)
intent(in)::s1
pointer ::s1
external s1
call s1
end subroutine
subroutine sb(s1)
intent(inout)::s1
pointer ::s1
external s1
call s1
end subroutine
subroutine sc(s1)
intent(out)::s1
pointer ::s1
external s1,x
s1=>x
call s1
end subroutine
end
use m1
external x,y
pointer  y
y=>x
call sa(y)
call sb(y)
nullify(y)
call sc(y)
print *,'pass'
end
subroutine x
end
