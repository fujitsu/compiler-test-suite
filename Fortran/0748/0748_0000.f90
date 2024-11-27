subroutine s1(k)
character(2),pointer::p(:)
character(2),target ::t(5)=['11','22','33','44','55']
if (k==1) then
  p=>t(1:3)
else
  p=>t(1::2)
endif
call ss(p(:))
call ss(p(:)(:))
call ss(p(:)(:1))
call ss(p(:)(2:2))
contains
subroutine ss(a)
character(*),contiguous::a(:)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1(1)
print *,'pass'
end
