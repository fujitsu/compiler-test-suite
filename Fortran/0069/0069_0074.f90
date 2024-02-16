  implicit none
  character(len=7),pointer :: chr_pointer
  allocate(character(len=1+6) :: chr_pointer) !
  print *,'pass'
end
