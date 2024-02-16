  implicit none
  integer,parameter :: cnt01 = 1
  character(len=2),pointer :: chr_pointer
  allocate(character(len=1+cnt01) :: chr_pointer) !
  print *,'pass'
end
