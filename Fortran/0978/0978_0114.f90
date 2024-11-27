module mod
  type str
    integer :: iii
    integer :: jjj
  end type
  contains
  subroutine sub(from,to)
    type(str),allocatable,intent(inout) :: from(:)
    type(str),allocatable,intent(out) :: to(:)
    call move_alloc(from,to)
   write(1,*) to
  end subroutine
end module

use mod
type(str),allocatable :: iii(:)
type(str),allocatable :: jjj(:)
integer k(20)
allocate(iii(10))
do i = 1,10
  iii(i) = str(i,i*10)
end do
call sub(iii,jjj)
   write(1,*) jjj
rewind 1
read(1,*) k
if (any(k/=&
(/1,10,2,20,3,30,4,40,5,50,6,60,7,70,8,80,9,90,10,100/)))write(6,*) "NG"
read(1,*) k
if (any(k/=&
(/1,10,2,20,3,30,4,40,5,50,6,60,7,70,8,80,9,90,10,100/)))write(6,*) "NG"
print *,'pass'
end
