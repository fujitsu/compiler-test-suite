  implicit none
  character(len=3),pointer :: chr_pointer
  allocate(character(len=len("abc")) :: chr_pointer)
  print *,'pass'
end
