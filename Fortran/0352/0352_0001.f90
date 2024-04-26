program main
  implicit none
  integer :: i, buf1

  do i=1,5
     buf1 = 1
     print *,"i=",i,"  befor buf=",buf1
     call sub(i, buf1)
     print *,"         => after buf=",buf1
  enddo
  stop
contains
subroutine sub(i, buf1)
  integer,intent(in) :: i
  integer,intent(out) :: buf1
  if(mod(i,3)==0)then
    buf1=2
  endif
end subroutine sub
end program main
