  implicit none
  character(7),pointer :: chr_pointer01
  character(3) :: w_character01(3) = "123"
  character(1) :: w_character02(3) = "6"
  allocate(chr_pointer01,source=w_character01(2)//"45"//w_character02(2))
end
