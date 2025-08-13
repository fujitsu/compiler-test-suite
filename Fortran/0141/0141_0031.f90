integer,allocatable::a(:)
allocate(a(2))
a=(/1,2/)
call sub(a)
call chk
print *,'pass'
contains
subroutine sub(a)
integer,allocatable::a(:)
namelist /nam/a
write(22,nam)
end subroutine
end
subroutine chk()
integer::a(2)
namelist /nam/a
rewind 22
read(22,nam)
if (a(1)/=1) print *,101,a(1)
if (a(2)/=2) print *,102,a(2)
end subroutine
