subroutine s
integer d(2),e(2)
call s1(2,d,e)
contains
subroutine s1(i,d,e)
integer a(i)
integer,allocatable::b(:)
integer,pointer    ::c(:)
integer d(i)
integer e(:)
character(i) f
namelist /nam/a,b,c,d,e,f
allocate(b(i),c(i))
a=[1,2]
b=[3,4]
c=[5,6]
d=[7,8]
e=[9,10]
f='12'
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer a(2),b(2),c(2),d(2),e(2)
character(2) f
namelist /nam/a,b,c,d,e,f
rewind 1
read(1,nam)
if (any(a/=[1,2]))print *,101,a
if (any(b/=[3,4]))print *,102,b
if (any(c/=[5,6]))print *,103,c
if (any(d/=[7,8]))print *,104,d
if (any(e/=[9,10]))print *,105,e
if (    f/='12')print *,106,f
end



