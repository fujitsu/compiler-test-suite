do i=11,20
  call s1(i)
end do
 print *,'pass'
end
subroutine s1(iu)
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
integer mm(5)
i=5
write(iu,*) size(funa()),size(funb()),size(funas()),size(funbs()) 
rewind iu
read(iu,*)j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=5))write(6,*) "NG"
rewind iu
read(iu,*,end=1) mm(size(funa())),mm(size(funb())),mm(size(funas())),mm(4:size(funbs())) 
write(6,*) "NG"
1 continue
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
 end subroutine

subroutine sub(*,i)
if (i/=5)write(6,*) "NG"
return 1
end
