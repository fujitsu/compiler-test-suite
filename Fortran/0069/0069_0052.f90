  implicit none
  character(3),pointer :: chr_pointer01
  character(5),parameter :: c_character01 = "12345"
  allocate(chr_pointer01,source=c_character01(1:3)) !
  print *,'pass'
end
