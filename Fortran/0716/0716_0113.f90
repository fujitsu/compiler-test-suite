  implicit none
  character(7),pointer :: chr_pointer01
  character(3) :: w_character01(3) = "123"
  character(1) :: w_character02(3) = "4"
  character(2) :: w_character03(3) = "56"
  allocate(chr_pointer01,source=w_character01(2)//w_character02(2)//w_character03(2))
end
