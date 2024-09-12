module m1
contains
subroutine s1(a1,b1)
integer a1(:)
character b1(:)
call s(a1)
call t(b1)
end subroutine
subroutine s(a1)
integer,intent(in):: a1(2)
if (any(a1/=(/1,3/)))print *,101
end subroutine
subroutine t(b1)
character(*),intent(in):: b1(2)
if (any(b1/=(/'1','3'/)))print *,102
end subroutine
end
use  m1
integer:: a1(3)=(/1,2,3/)
character:: b1(3)=(/'1','2','3'/)
call s1(a1(::2),b1(::2))
print *,'pass'
end
