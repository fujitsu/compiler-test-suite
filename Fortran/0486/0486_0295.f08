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
call sss(a)
call ss2(a,[(n,n=1,k)],[(n,n=1,k)])
end subroutine
subroutine sss(b)
integer::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=[1,2,3])) print *,202
end subroutine
subroutine ss2(b,bb,bbb)
integer::b(*),bb(:),bbb(*)
if (loc(t)/=loc(b)) print *,301,loc(t),loc(b)
if (any(b(:3)/=[1,2,3])) print *,302
if (any(bb/=1)) print *,303
if (any(bbb(:k)/=1)) print *,304
if (any(ubound(bb)/=1)) print *,305
end subroutine
end subroutine
call s1(1)
print *,'pass'
end
