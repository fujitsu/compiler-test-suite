  implicit none
  character(5),pointer :: chr_pointer
  integer :: int01
  int01 = 3
  allocate(character(len=2+int01) :: chr_pointer) !
!  print *,len(chr_pointer)
  print *,'pass'
end
