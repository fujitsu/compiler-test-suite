recursive subroutine s1
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
allocate(a(2),b,c(2),d)
a=(/1,2/)
b=3
c=(/1,2/)
d=3
write(61,*)a
write(62,*)b
write(63,*)c
write(64,*)d
end
call s1
call chk
print *,'pass'
end
recursive subroutine chk
integer,dimension(2):: a
integer             :: b
integer,dimension(2):: c
integer             :: d
rewind 61
rewind 62
rewind 63
rewind 64
read(61,*)a
read(62,*) b
read(63,*) c
read(64,*) d
if (any(a/=(/1,2/)))print *,'error-1'
if (    b/=3       )print *,'error-2'
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
end
