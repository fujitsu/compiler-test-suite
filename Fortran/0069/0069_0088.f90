  implicit none
  character(3),pointer :: chr_pointer
  integer :: int01
  int01 = 3
  allocate(character(len=int01) :: chr_pointer)
  print *,'pass'
end
