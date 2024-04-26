subroutine s1
type at
integer::a1
integer::a2
end type
type(at),allocatable,dimension(:):: a
type(at),allocatable             :: b
type(at),pointer    ,dimension(:):: c
type(at),pointer                 :: d
namelist /nama/ a
namelist /namb/ b
namelist /namc/ c
namelist /namd/ d
allocate(a(2),b,c(2),d)
a=(/at(1,2),at(1,2)/)
b=at(3,3)
c=(/at(1,2),at(1,2)/)
d=at(3,3)
write(1,nama)
write(2,namb)
write(3,namc)
write(4,namd)
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
type(at)             :: b
type(at),dimension(2):: c
type(at)             :: d
namelist /nama/ a
namelist /namb/ b
namelist /namc/ c
namelist /namd/ d
rewind 1
rewind 2
rewind 3
rewind 4
read(1,nama) 
read(2,namb) 
read(3,namc) 
read(4,namd) 
if (any(a%a1/=1))print *,'error-1'
if (any(a%a2/=2))print *,'error-1'
if (    b%a1/=3       )print *,'error-2'
if (    b%a2/=3       )print *,'error-2'
if (any(c%a1/=1))print *,'error-3'
if (any(c%a2/=2))print *,'error-3'
if (    d%a1/=3       )print *,'error-4'
if (    d%a2/=3       )print *,'error-4'
end
