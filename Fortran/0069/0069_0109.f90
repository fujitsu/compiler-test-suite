  implicit none

  character(:),pointer :: chr_pointer
  integer :: int01
  int01 = 3
  allocate(character(len=int01+2) :: chr_pointer) !
!  print *,len(chr_pointer)
  print *,'pass'
end
