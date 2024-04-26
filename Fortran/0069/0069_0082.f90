  implicit none
  character(len=6),pointer :: chr_pointer
  character(len=3) :: chr00(4)
  allocate(character(len=len(chr00)+len("abc")) :: chr_pointer)
  print *,'pass'
end
