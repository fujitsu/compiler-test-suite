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
write(1,*)a
write(2,*)b
write(3,*)c
write(4,*)d
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
rewind 1
rewind 2
rewind 3
rewind 4
read(1,*)a 
read(2,*) b
read(3,*) c
read(4,*) d
if (any(a/=(/1,2/)))print *,'error-1'
if (    b/=3       )print *,'error-2'
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
end
