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
i=5
select case(size(funa()))
 case (5)
 case default
  write(6,*) "NG"
end select
select case(size(funb()))
 case (5)
 case default
  write(6,*) "NG"
end select
select case(size(funas()))
 case (5)
 case default
  write(6,*) "NG"
end select
select case(size(funbs()))
 case (5)
 case default
  write(6,*) "NG"
end select
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
end
