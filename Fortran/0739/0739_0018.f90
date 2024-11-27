call s1(2)
print *,'pass'
end
subroutine s1(i)
   type y1
    integer,allocatable,dimension(:)::y11
    integer,allocatable,dimension(:)::y12
    integer,allocatable,dimension(:)::y13
    integer,allocatable,dimension(:)::y14
   end type
   type y2
    integer,allocatable,dimension(:)::y21
    integer,allocatable,dimension(:)::y22
    integer,allocatable,dimension(:)::y23
    integer,allocatable,dimension(:)::y24
   end type
   type x
    integer::x1
    integer::x2
    integer::x3
    type(y1),dimension(3,2)::x4
    integer::x5
    integer::x6
    integer::x7
    type(y2),dimension(3,2)::x8
    integer::x11
    integer::x12
    integer::x13
    type(y1),dimension(:,:),allocatable::x14
    integer::x15
    integer::x16
    integer::x17
    type(y2),dimension(:,:),allocatable::x18
   end type
   type(x),dimension(i,i+1)::xa
do j2=1,i+1
do j1=1,i
xa(j1,j2)%x1=1
xa(j1,j2)%x2=1
xa(j1,j2)%x3=1
xa(j1,j2)%x5=1
xa(j1,j2)%x6=1
xa(j1,j2)%x7=1
xa(j1,j2)%x11=1
xa(j1,j2)%x12=1
xa(j1,j2)%x13=1
xa(j1,j2)%x15=1
xa(j1,j2)%x16=1
xa(j1,j2)%x17=1
allocate(xa(j1,j2)%x14(3,2))
allocate(xa(j1,j2)%x18(3,2))
if (xa(j1,j2)%x1/=1)write(6,*) "NG"
if (xa(j1,j2)%x2/=1)write(6,*) "NG"
if (xa(j1,j2)%x3/=1)write(6,*) "NG"
if (xa(j1,j2)%x5/=1)write(6,*) "NG"
if (xa(j1,j2)%x6/=1)write(6,*) "NG"
if (xa(j1,j2)%x7/=1)write(6,*) "NG"
if (xa(j1,j2)%x11/=1)write(6,*) "NG"
if (xa(j1,j2)%x12/=1)write(6,*) "NG"
if (xa(j1,j2)%x13/=1)write(6,*) "NG"
if (xa(j1,j2)%x15/=1)write(6,*) "NG"
if (xa(j1,j2)%x16/=1)write(6,*) "NG"
if (xa(j1,j2)%x17/=1)write(6,*) "NG"
do n2=1,2
do n1=1,3
allocate(xa(j1,j2)%x4(n1,n2)%y11(1))
allocate(xa(j1,j2)%x4(n1,n2)%y12(1))
allocate(xa(j1,j2)%x4(n1,n2)%y13(1))
allocate(xa(j1,j2)%x4(n1,n2)%y14(1))
allocate(xa(j1,j2)%x14(n1,n2)%y11(1))
allocate(xa(j1,j2)%x14(n1,n2)%y12(1))
allocate(xa(j1,j2)%x14(n1,n2)%y13(1))
allocate(xa(j1,j2)%x14(n1,n2)%y14(1))
allocate(xa(j1,j2)%x8(n1,n2)%y21(1))
allocate(xa(j1,j2)%x8(n1,n2)%y22(1))
allocate(xa(j1,j2)%x8(n1,n2)%y23(1))
allocate(xa(j1,j2)%x8(n1,n2)%y24(1))
allocate(xa(j1,j2)%x18(n1,n2)%y21(1))
allocate(xa(j1,j2)%x18(n1,n2)%y22(1))
allocate(xa(j1,j2)%x18(n1,n2)%y23(1))
allocate(xa(j1,j2)%x18(n1,n2)%y24(1))
end do
end do

end do
end do
end subroutine 
