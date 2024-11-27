call s1(1)
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
    type(y1),dimension(1)::x4
    integer::x5
    integer::x6
    integer::x7
    type(y2),dimension(1)::x8
   end type
   type(x),dimension(i)::xa
xa(1)%x1=1
xa(1)%x2=1
xa(1)%x3=1
xa(1)%x5=1
xa(1)%x6=1
xa(1)%x7=1
if (xa(1)%x1/=1)write(6,*) "NG"
if (xa(1)%x2/=1)write(6,*) "NG"
if (xa(1)%x3/=1)write(6,*) "NG"
if (xa(1)%x5/=1)write(6,*) "NG"
if (xa(1)%x6/=1)write(6,*) "NG"
if (xa(1)%x7/=1)write(6,*) "NG"
end subroutine 
