module m1
integer,allocatable,dimension(:):: a
contains
subroutine s1()
namelist /nama/ a
a=a+1
write(1,nama)
a=a+1
write(1,nama)
a=a+1
end subroutine
end
subroutine s1_0
use m1
allocate(a(2))
a=(/1,2/)
call       s1()
if (any(a/=(/4,5/)))print *,'error-1'
end
call s1_0
call chk
print *,'pass'
end
subroutine chk
integer,allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
rewind 1
read(1,nama) 
if (any(a/=[2,3])) print *,102
read(1,nama) 
if (any(a/=[3,4])) print *,103
end

