  implicit none
  integer,parameter :: cnt01 = 1
  character(len=1),pointer :: chr_pointer
  allocate(character(len=cnt01) :: chr_pointer)
  print *,'pass'
end
