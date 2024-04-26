subroutine s1(i)
integer a(i)
integer b(2)
namelist /nam1/ a
namelist /nam2/ b
a=[3,4]
b=[5,6]
write(1,nam1)
write(2,nam2)
end
call s1(2)
call chk
print *,'pass'
end
subroutine chk
integer a(2)
integer b(2)
namelist /nam1/ a
namelist /nam2/ b
rewind 1
rewind 2
read(1,nam1)
read(2,nam2)
if (any(a/=[3,4])) print *,101
if (any(b/=[5,6])) print *,102
end
