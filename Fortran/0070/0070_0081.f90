module m1
integer,allocatable,dimension(:):: a
contains
subroutine s1()
namelist /nama/ a
a=1
read(1,nama)
if (any(a/=[2,3])) print *,102
a=2
read(1,nama)
if (any(a/=[4,5])) print *,103
end subroutine
end
subroutine s1_0
use m1
allocate(a(2))
call       s1()
if (any(a/=(/4,5/)))print *,'error-1'
end
call put()
call s1_0
print *,'pass'
contains
subroutine put()
integer,allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
a=[2,3]
write(1,nama) 
a=[4,5]
write(1,nama) 
rewind 1
end subroutine
end

