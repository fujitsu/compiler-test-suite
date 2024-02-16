  implicit none
  character(:),pointer :: chr_pointer
  allocate(character(len=1+int(2)) :: chr_pointer) !
  print *,'pass '
end
