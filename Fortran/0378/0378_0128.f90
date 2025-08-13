recursive subroutine s1(i)
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
allocate(a(2),b,c(2),d)
a=i+(/1,2/)
b=i+3
c=i+(/1,2/)
d=i+3
write(71,*)a
write(72,*)b
write(73,*)c
write(74,*)d
i=i+1
if (i<3)call s1(i)
deallocate(a,b,c,d)
end
i=0
call s1(i)
call chk
print *,'pass'
end
recursive subroutine chk
integer,dimension(2):: a
integer             :: b
integer,dimension(2):: c
integer             :: d
rewind 71
rewind 72
rewind 73
rewind 74
read(71,*)a
read(72,*) b
read(73,*) c
read(74,*) d
if (any(a/=(/1,2/)))print *,'error-1'
if (    b/=3       )print *,'error-2'
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
end
