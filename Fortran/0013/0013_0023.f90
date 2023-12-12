subroutine s1
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::lll
allocate(t(3))
t=(/1,2,3/)
lll=tt(t(::2))
if (lll%p(2)/=3) print *,201
end subroutine
call s1
print *,'OK'
end
