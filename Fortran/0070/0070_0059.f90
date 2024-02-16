module m1
contains
subroutine s1(a)
integer,allocatable,dimension(:):: a
integer,allocatable,dimension(:):: aa
namelist /namaa/ aa
namelist /nama/ a
allocate(aa(2))
aa=(/1,2/)
write(2,namaa)
a=(/1,2/)
write(1,nama)
end subroutine
end
subroutine s1_0
use m1
integer,allocatable,dimension(:):: a
allocate(a(2))
call       s1(a)
if (any(a/=(/1,2/)))print *,'error-1'
end
call s1_0
print *,'pass'
end
