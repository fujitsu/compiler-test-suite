integer a(10),arr(2,2,2,2,2,2,2,2,2,2)
integer(kind=1),parameter :: i8 =8
integer(kind=1),parameter :: i7 =7
integer(kind=1),parameter :: i6 =6
integer(kind=1),parameter :: i5 =5
integer(kind=1),parameter :: i4 =4
integer(kind=1),parameter :: i3 =3
integer(kind=1),parameter :: i2 =2
integer(kind=1),parameter :: i1 =1
integer(kind=1),parameter :: i0 =0
do i=1,10
a(i) = i
end do
do i=1,10
a(i) = i
end do
a=a
i=i
arr=0
arr(2,2,2,2,2,2,2,2,2,2)=arr(2,2,2,2,2,2,2,2,2,2)
print *,'pass'
end
