print *,'pass'
end
subroutine sub
   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
   end type
   type y
    integer::y1
    type(z),allocatable,dimension(:)::y2
    integer,allocatable,dimension(:)::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer,allocatable,dimension(:)::x3
   end type
do j=1,8
call sub1
call sub2(j)
call sub3(j)
call sub4(j)
call sub5(j)
call sub6(j)
call sub7(j)
end do
contains
subroutine sub1
   type(x),allocatable,dimension(:)::x1a
   if (allocated(x1a) ) then
      x1a%x1=1
   endif
end subroutine
subroutine sub2(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
x1a%x1=1
if (any(x1a%x1/=1))write(6,*) "NG"
end subroutine
subroutine sub3(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
end subroutine
subroutine sub4(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x3(j))
end subroutine
subroutine sub5(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
allocate(x1a(j)%x3(j))
end subroutine
subroutine sub6(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
allocate(x1a(j)%x2(j)%y2(j))
end subroutine
subroutine sub7(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
allocate(x1a(j)%x2(j)%y3(j))
end subroutine
subroutine sub8(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
allocate(x1a(j)%x2(j)%y2(j))
allocate(x1a(j)%x2(j)%y3(j))
end subroutine
subroutine sub9(j)
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(j))
allocate(x1a(j)%x2(j))
allocate(x1a(j)%x2(j)%y2(j))
allocate(x1a(j)%x2(j)%y3(j))
allocate(x1a(j)%x2(j)%y2(j)%z2(j))
end subroutine
end
