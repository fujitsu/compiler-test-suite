  implicit none
  character(:),pointer :: chr_pointer
  allocate(character(len=int(3)) :: chr_pointer) !
  print *,'pass '
end
