   type x
    integer::x1
    integer,allocatable,dimension(:)::x2
    integer::x3
   end type
   type y
     integer ::y1
     integer,allocatable,dimension(:)::y2
     type(x),allocatable,dimension(:)::y3
     integer ::y4
   end type
   type(y),allocatable,dimension(:)::ya
   type(y)                         ::yv
   type(x),allocatable,dimension(:)::xa
integer(8)::j
integer(2)::k(3)
j=0;k=0
allocate(xa(2))
allocate(ya(2))
allocate(yv%y3(2))
allocate(yv%y3(2),stat=j)
if (j==0)write(6,*) "NG"
j=0
do i1=1,2
allocate(xa(i1)%x2(3))
allocate(xa(i1)%x2(3),stat=k(3))
if (k(3)==0)write(6,*) "NG"
k(3)=0
end do
do i1=1,2
allocate(ya(i1)%y2(3))
allocate(ya(i1)%y2(3),stat=j)
if (j==0)write(6,*) "NG"
j=0
allocate(ya(i1)%y3(3))
allocate(ya(i1)%y3(3),stat=k(2))
if (k(2)==0)write(6,*) "NG"
k(2)=0
end do
do i1=1,2
allocate(yv%y3(i1)%x2(3))
allocate(yv%y3(i1)%x2(3),stat=j)
if (j==0)write(6,*) "NG"
j=0
end do
print *,'pass'
end
