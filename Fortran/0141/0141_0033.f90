integer,allocatable::a(:)
call chk
allocate(a(2))
call sub(a,2)
print *,'pass'
contains
subroutine sub(a,k)
integer,allocatable::a(:)
integer            ::b(k,k)
namelist /nam/a,b
read(1,nam)
if (a(1)/=1) print *,101,a(1)
if (a(2)/=2) print *,102,a(2)
if (b(1,1)/=11) print *,201,b(1,1)
if (b(2,1)/=12) print *,202,b(2,1)
if (b(1,2)/=13) print *,203,b(1,2)
if (b(2,2)/=14) print *,204,b(2,2)
end subroutine
end
subroutine chk()
integer::a(2)=[1,2]
integer::b(4)=[11,12,13,14]
namelist /nam/a,b
write(1,nam)
rewind 1
end subroutine
