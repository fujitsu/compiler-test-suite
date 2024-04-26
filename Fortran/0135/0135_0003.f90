subroutine s1
type at
integer::a1
integer::a2
end type
type(at),allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
a(1)%a1=1
a(1)%a2=2
a(2)%a1=3
a(2)%a2=4
write(1,nama)
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
type(at),dimension(2):: a
namelist /nama/ a
rewind 1
read(1,nama) 
if(a(1)%a1/=1)print *,'error-1'
if(a(1)%a2/=2)print *,'error-2'
if(a(2)%a1/=3)print *,'error-3'
if(a(2)%a2/=4)print *,'error-4'
end
