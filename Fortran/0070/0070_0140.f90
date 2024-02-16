subroutine s
integer,allocatable::b(:)
call s1(2,b)
contains
subroutine s1(i,b)
integer         :: a(i)
integer,allocatable::b(:)
namelist /nam/ a,b
a=[3,4]
allocate(b(i))
b=[1,2]
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer b(2),a(2)
namelist /nam/a,b
rewind 1
read(1,nam)
if (any(a/=[3,4]))print *,101,a
if (any(b/=[1,2]))print *,102,b
end



