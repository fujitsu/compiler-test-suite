integer,allocatable::a(:)
call chk
allocate(a(2))
call sub(a)
print *,'pass'
contains
subroutine sub(a)
integer,allocatable::a(:)
namelist /nam/a
read(23,nam)
if (a(1)/=1) print *,101,a(1)
if (a(2)/=2) print *,102,a(2)
end subroutine
end
subroutine chk()
integer::a(2)=[1,2]
namelist /nam/a
write(23,nam)
rewind 23
end subroutine
