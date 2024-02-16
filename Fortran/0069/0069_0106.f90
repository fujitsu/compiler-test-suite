  implicit none
  real :: real01 = 2.0
  character(:),pointer :: chr_pointer
  allocate(character(len=int(real01)) :: chr_pointer) !
!  print *,len(chr_pointer)
  print *,'pass'
end
