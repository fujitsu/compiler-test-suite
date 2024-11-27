module mod
  integer,parameter :: len = 10
  character(len=len),allocatable :: from(:,:)
  character(len=len),allocatable :: to(:,:)
  contains
  subroutine sub(from,to)
    character(len=*),allocatable,intent(inout) :: from(:,:)
    character(len=*),allocatable,intent(out) :: to(:,:)
    call move_alloc(from,to)
  end subroutine
end module

program main
  use mod
  allocate(from(5,2))
  from = reshape((/'aa','bb','cc','dd','ee','ff','gg','hh','ii','jj'/),shape=(/5,2/))
  call sub(from,to)
  if(any(to/=reshape((/'aa','bb','cc','dd','ee','ff','gg','hh','ii','jj'/),shape=(/5,2/))))write(6,*) "NG"
print *,'pass'

end
