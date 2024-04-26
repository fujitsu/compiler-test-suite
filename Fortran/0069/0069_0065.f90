  implicit none
  character(6),pointer :: chr_pointer01
  character(5),parameter :: c_character01 = "12345"
  character(5) :: w_character01 = "12345"
  allocate(chr_pointer01,source=c_character01(1:2)//"12345"(1:2)//w_character01(1:2))
  print *,'pass'
end
