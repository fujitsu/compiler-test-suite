module mod
  contains
  subroutine sub(from,to)
    character(len=*),allocatable,intent(inout) :: from(:,:)
    character(len=*),allocatable,intent(out) :: to(:,:)
    call move_alloc(from,to)
  end subroutine
end module

program main
  use mod
  character(len=10),allocatable :: from(:,:)
  character(len=10),allocatable :: to(:,:)
  allocate(from(5,2))
  from = reshape((/'aa','bb','cc','dd','ee','ff','gg','hh','ii','jj'/),shape=(/5,2/))
  call sub(from,to)
  if (any(to/=reshape((/'aa','bb','cc','dd','ee','ff','gg','hh','ii','jj'/),shape=(/5,2/))))write(6,*) "NG"
print *,'pass'
end
