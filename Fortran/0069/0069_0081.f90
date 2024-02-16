  implicit none
  character(len=3),pointer :: chr_pointer
  character(len=3) :: chr00(4)
  allocate(character(len=len(chr00)) :: chr_pointer) !
  print *,'pass'
end
