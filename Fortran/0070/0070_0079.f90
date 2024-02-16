module m1
integer,allocatable,dimension(:):: a
integer,allocatable,dimension(:):: aa
contains
subroutine s1()
namelist /namaa/ aa
namelist /nama/ a
allocate(aa(2),a(2))
aa=(/1,2/)
write(2,namaa)
a=(/1,2/)
write(1,nama)
end subroutine
end
subroutine s1_0
use m1
call       s1()
end
call s1_0
print *,'pass'
end
