subroutine sub0
type x
  integer,allocatable::x1(:)
end type
type(x),allocatable::z(:)
i=10
allocate (z(i))
do i=1,10
    j=5
    allocate (z(i)%x1(j))
    z(i)%x1=(/(kk,kk=i,i+4)/)
    if (any(z(i)%x1/=(/(kk,kk=i,i+4)/)))write(6,*) "NG"
end do
if (size(z)/=10)write(6,*) "NG"
end
subroutine sub1
entry sub2
entry sub3
entry sub4
entry sub5
type x
  integer,allocatable::x1(:)
end type
type(x),allocatable::z(:)
i=10
allocate (z(i))
do i=1,10
    j=5
    allocate (z(i)%x1(j))
    z(i)%x1=(/(kk,kk=i,i+4)/)
    if (any(z(i)%x1/=(/(kk,kk=i,i+4)/)))write(6,*) "NG"
end do
if (size(z)/=10)write(6,*) "NG"
end
do kk=1,20
  call sub0
  call sub1
  call sub2
end do
print *,'pass'
end
