subroutine s
call s1(2)
contains
subroutine s1(i)
integer a(i)
integer,allocatable::b(:)
namelist /nam/ a,b
allocate(b(i))
a=[1,2]
b=[3,4]
write(1,nam)
call chk
end subroutine
end
call s
print *,'pass'
end
subroutine chk
integer a(2),b(2)
namelist /nam/a,b
rewind 1
read(1,nam)
if (any(a/=[1,2]))print *,101,a
if (any(b/=[3,4]))print *,102,b
end



