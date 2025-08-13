recursive subroutine s1(i)
entry s2(i)
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
allocate(a(2),b,c(2),d)
a=i+(/1,2/)
b=i+3
c=i+(/1,2/)
d=i+3
write(81,*)a
write(82,*)b
write(83,*)c
write(84,*)d
i=i+1
if (i<3)call s2(i)
deallocate(a,b,c,d)
end
i=0
call s2(i)
call chk
print *,'pass'
end
recursive subroutine chk
integer,dimension(2):: a
integer             :: b
integer,dimension(2):: c
integer             :: d
rewind 81
rewind 82
rewind 83
rewind 84
read(81,*)a
read(82,*) b
read(83,*) c
read(84,*) d
if (any(a/=(/1,2/)))print *,'error-1'
if (    b/=3       )print *,'error-2'
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
end
