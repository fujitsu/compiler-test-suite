module m1
contains
subroutine s(i)
integer,pointer,intent(in)::i
do i=1,2
call ss(i)
end do
end subroutine
subroutine ss(i)
integer,pointer,intent(in)::i
i=i+1
end subroutine
subroutine t
integer,pointer::i
allocate(i)
call s(i)
end subroutine
end 
use m1
call t
print *,'pass'
end
