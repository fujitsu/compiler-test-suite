module mod
  contains
  subroutine sub(from,to)
    integer,allocatable,intent(inout) :: from(:)
    integer,allocatable,intent(out) :: to(:)
    call move_alloc(from,to)
    if (any(to/= &
     (/1,2,3,4,5,6,7,8,9,10/)))write(6,*) "NG"
  end subroutine
end module

use mod
integer,allocatable :: iii(:)
integer,allocatable :: jjj(:)
allocate(iii(10))
iii = (/1,2,3,4,5,6,7,8,9,10/)
call sub(iii,jjj)
    if (any(jjj/= &
     (/1,2,3,4,5,6,7,8,9,10/)))write(6,*) "NG"
print *,'pass'
end
