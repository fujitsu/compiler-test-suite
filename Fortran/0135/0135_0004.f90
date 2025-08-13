subroutine s1
type at
integer::a1
integer::a2
end type
type(at),allocatable:: a
namelist /nama/ a
allocate(a)
a%a1=1
a%a2=2
write(8,nama)
end
call s1
call chk
print *,'pass'
end
subroutine chk
type at
integer::a1
integer::a2
end type
type(at):: a
namelist /nama/ a
rewind 8
read(8,nama)
if(a%a1/=1)print *,'error-1'
if(a%a2/=2)print *,'error-2'
end
