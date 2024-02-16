module m1
contains
subroutine s1(b)
integer,allocatable             :: b
namelist /namb/ b
b=3
write(2,namb)
b=1+3
write(2,namb)
end subroutine
subroutine chk(b)
integer,allocatable             :: b
namelist /namb/ b
rewind 2
read(2,namb) 
if (    b/=3       )print *,'error-2',b
read(2,namb) 
if (    b/=3      +1 )print *,'error-102'
end subroutine
end
subroutine s1_0
use m1
integer,allocatable             :: b
allocate(b)
call       s1(b)
if (    b/=1+3       )print *,'error-202'
end
subroutine chk_0
use m1
integer,allocatable             :: b
allocate(b)
call      chk(b)
if (    b/=1+3       )print *,'error-302'
end
call s1_0
call chk_0
print *,'pass'
end
