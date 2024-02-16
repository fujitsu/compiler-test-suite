subroutine s
integer,allocatable::b(:)
call s1(2,b)
contains
subroutine s1(i,b)
character(len=i):: a
integer,allocatable::b(:)
namelist /nam/ a,b
a='34'
allocate(b(i))
b=[1,2]
open(1,delim='quote')
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer b(2)
character(2)::a
namelist /nam/a,b
rewind 1
read(1,nam)
if (   (a/='34'))print *,101,a
if (any(b/=[1,2]))print *,102,b
end



