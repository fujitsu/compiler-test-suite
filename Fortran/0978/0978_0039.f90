subroutine sub(from,to)
  integer,allocatable,intent(inout) :: from(:,:)
  integer,allocatable,intent(out) :: to(:,:)
  call move_alloc(from,to)
end subroutine

program main

interface
subroutine sub(from,to)
  integer,allocatable,intent(inout) :: from(:,:)
  integer,allocatable,intent(out) :: to(:,:)
end subroutine
end interface
  integer,allocatable :: from(:,:)
  integer,allocatable :: to(:,:)
  allocate(from(5,2))
  from = reshape((/1,2,3,4,5,6,7,8,9,10/),shape=(/5,2/))
  call sub(from,to)
  if (any(to/=reshape((/1,2,3,4,5,6,7,8,9,10/),shape=(/5,2/))))write(6,*) "NG"
print *,'pass'

end
