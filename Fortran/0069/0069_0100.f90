  implicit none
  character(:),pointer :: chr_pointer
  allocate(character(len=1+len("ab")) :: chr_pointer) !
  print *,'pass'
end
