subroutine s
character(:),allocatable::b(:)
call s1(2,b)
contains
subroutine s1(i,b)
integer a(i)
character(:),allocatable::b(:)
character(:),allocatable::c(:)
namelist /nam/ a,b,c
allocate(character(2)::b(i),c(i))
open(1,delim='quote')
a=[1,2]
b=['33','44']
c=['55','66']
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer a(2)
character(2)::b(2),c(2)
namelist /nam/a,b,c
rewind 1
read(1,nam)
if (any(a/=[1,2]))print *,101,a
if (any(b/=['33','44']))print *,102,b
if (any(c/=['55','66']))print *,103,c
end



