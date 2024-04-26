  implicit none
  complex :: cmp01 = 3.00
  character(3),pointer :: chr_pointer
  allocate(character(len=int(cmp01)) :: chr_pointer)
  print *,'pass'
end
