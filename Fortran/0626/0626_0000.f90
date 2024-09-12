subroutine s1
integer,allocatable::a(:,:)
integer,pointer    ::b(:)
integer,target     ::c(5)
namelist /nam/a,b
b=>c(1:5:2)
allocate(a(1,30))
a=0
allocate(a(1,1),stat=is)
if (is==0)print *,201
b=[1,2,3]
a=4
if (sizeof(a)/=30*4)print *,101
if (sizeof(b)/=12)print *,102
write(1,*) a
write(1,*) b
write(2,nam)
call chk
end
call s1
print *,'pass'
end
subroutine chk
integer a(30),b(3)
namelist /nam/a,b
rewind 1
read(1,*) a
read(1,*) b
if (any(a/=4))print *,103
if (any(b/=[1,2,3]))print *,104
rewind 2
read(2,nam)
if (any(a/=4))print *,303
if (any(b/=[1,2,3]))print *,304
end
