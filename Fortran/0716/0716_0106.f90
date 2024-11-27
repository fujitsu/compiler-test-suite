  implicit none
  character(5),pointer :: chr_pointer01
  character(2) :: w_character01 = "12"
  character(2) :: w_character02 = "56"
  allocate(chr_pointer01,source=w_character01//"34"//w_character02)
end
