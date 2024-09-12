integer,target::t=1
call s(t)
print *,'pass'
contains
subroutine s(p)
integer,pointer,intent(in)::p
if (p/=1)print *,101
end subroutine
end
