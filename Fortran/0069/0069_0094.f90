  implicit none
  character(:),pointer :: chr_pointer
  allocate(character(len=1+6) :: chr_pointer) !
  print *,'pass'
end
