subroutine s1(k)
integer,pointer::p(:)
integer,target ::t(5)=[1,2,3,4,5]
if (k==1) then
  p=>t(1:3)
else
  p=>t(1::2)
endif
call ss(p)
contains
subroutine ss(a)
integer,contiguous::a(:)
if (loc(t)/=loc(a)) print *,1201,loc(t),loc(b)
call sss(a)
end subroutine
subroutine sss(b)
integer::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=[1,2,3])) print *,202
end subroutine
end subroutine
call s1(1)
print *,'pass'
end
