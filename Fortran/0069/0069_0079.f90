  implicit none
  character(len=3),pointer :: chr_pointer
  allocate(character(len=len("ab")+1) :: chr_pointer) !
  print *,'pass'
end
