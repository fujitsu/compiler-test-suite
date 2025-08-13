type ty2
 integer,allocatable,dimension(:) :: a1
end type
type ty3
 type(ty2),allocatable,dimension(:) :: al2
end type
type(ty3) :: str
type(ty2) :: str0
integer::x(10)
x=(/(i,i=1,10)/)
allocate(str%al2(10))
str%al2=(/(ty2(x),i=1,10)/)
str%al2=(/(str%al2(i),i=1,10)/)
allocate(str0%a1(10))
str0%a1=str%al2(10)%a1
write(25,*)str0%a1
write(25,*)str%al2(1)%a1
print *,'pass'
end
