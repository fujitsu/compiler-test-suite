integer,pointer::p
call s(p)
print *,'pass'
contains
subroutine s(p)
integer,pointer,intent(out)::p
integer,target::t=1
p=>t
if (p/=1)write(6,*) "NG"
end subroutine
end
