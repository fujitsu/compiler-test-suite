subroutine s
integer d(2),e(2)
character(2) q
call s1(2,d,e,q)
contains
subroutine s1(i,d,e,q)
integer a(i)
integer,allocatable::b(:)
integer,pointer    ::c(:)
integer d(i)
integer e(:)
character(i) f
character(*) q
integer g,h
common /com/g,h
!$omp threadprivate (/com/)
namelist /nam/a,b,c,d,e,f,g,h,q
allocate(b(i),c(i))
a=[1,2]
b=[3,4]
c=[5,6]
d=[7,8]
e=[9,10]
f='12'
q='12'
g=101
h=102
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer a(2),b(2),c(2),d(2),e(2)
character(2) f,q
integer g,h
namelist /nam/a,b,c,d,e,f,g,h,q
rewind 1
read(1,nam)
if (any(a/=[1,2]))print *,101,a
if (any(b/=[3,4]))print *,102,b
if (any(c/=[5,6]))print *,103,c
if (any(d/=[7,8]))print *,104,d
if (any(e/=[9,10]))print *,105,e
if (    f/='12')print *,106,f
if (    g/=101)print *,107,g
if (    h/=102)print *,108,g
if (    q/='12')print *,109,q
end



