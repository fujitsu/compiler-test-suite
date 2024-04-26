  implicit none
  integer,parameter :: cnt01 = 1
  character(len=2),pointer :: chr_pointer
  allocate(character(len=cnt01+1) :: chr_pointer)
  print *,'pass'
end
