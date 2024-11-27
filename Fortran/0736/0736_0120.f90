do i=1,10
  call s1
end do
 print *,'pass'
end
subroutine s1
type xj
  integer::y1
  integer,allocatable,dimension(:)::y2
  integer::y3
end type
type xi
  integer::x1
  type(xj),allocatable,dimension(:)::x2
  integer::x3
end type
type (xi),dimension(5)::y
i=5
y=funa()
call sub1(y)
y=funb()
call sub1(y)
y=funas()
call sub1s(y)
y=funbs()
contains
 function funa()
 type(xi):: funa(i)
 do j=1,i
 funa(j)%x1=1
 allocate(funa(j)%x2(2))
  allocate(funa(j)%x2(2)%y2(2))
  funa(j)%x2(2)%y2 =(/1,2/)
 funa(j)%x3=3
end do
 end function
 function funb()
 type(xi),allocatable:: funb(:)
 allocate(funb(i))
 do j=1,i
 funb(j)%x1=1
 allocate(funb(j)%x2(2))
  allocate(funb(j)%x2(2)%y2(2))
  funb(j)%x2(2)%y2 =(/1,2/)
 funb(j)%x3=3
end do
 end function
 function funas()
 type(xi):: funas(i)
 do j=1,i
 funas(j)%x1=1
 allocate(funas(j)%x2(2))
  funas(j)%x2(2)%y1 =4
 funas(j)%x3=3
end do
 end function
 function funbs()
 type(xi),allocatable:: funbs(:)
 allocate(funbs(i))
 do j=1,i
 funbs(j)%x1=1
 allocate(funbs(j)%x2(2))
  funbs(j)%x2(2)%y1 =4
 funbs(j)%x3=3
end do
 end function
 subroutine sub1(x)
 type(xi)::x(:)
 do j=1,i
 if(x(j)%x1/=1)write(6,*) "NG"
 if(.not.allocated(x(j)%x2))write(6,*) "NG"
 if (allocated(x(j)%x2(1)%y2))write(6,*) "NG"
 if (.not.allocated(x(j)%x2(2)%y2))write(6,*) "NG"
 if(any(x(j)%x2(2)%y2/=(/1,2/)))write(6,*) "NG"
 if(x(j)%x3/=3)write(6,*) "NG"
end do
 end subroutine
 subroutine sub2(x)
 type(xi),allocatable::x(:)
 do j=1,i
 if(x(j)%x1/=1)write(6,*) "NG"
 if(.not.allocated(x(j)%x2))write(6,*) "NG"
 if (allocated(x(j)%x2(1)%y2))write(6,*) "NG"
 if (.not.allocated(x(j)%x2(2)%y2))write(6,*) "NG"
 if(any(x(j)%x2(2)%y2/=(/1,2/)))write(6,*) "NG"
 if(x(j)%x3/=3)write(6,*) "NG"
end do
 end subroutine
 subroutine sub1s(x)
 type(xi)::x(:)
 do j=1,i
 if(x(j)%x1/=1)write(6,*) "NG"
 if(.not.allocated(x(j)%x2))write(6,*) "NG"
 if (allocated(x(j)%x2(1)%y2))write(6,*) "NG"
 if((x(j)%x2(2)%y1/=4))write(6,*) "NG"
 if(x(j)%x3/=3)write(6,*) "NG"
end do
 end subroutine
 subroutine sub2s(x)
 type(xi),allocatable::x(:)
 do j=1,i
 if(x(j)%x1/=1)write(6,*) "NG"
 if(.not.allocated(x(j)%x2))write(6,*) "NG"
 if (allocated(x(j)%x2(1)%y2))write(6,*) "NG"
 if((x(j)%x2(2)%y1/=4))write(6,*) "NG"
 if(x(j)%x3/=3)write(6,*) "NG"
end do
 end subroutine
end
