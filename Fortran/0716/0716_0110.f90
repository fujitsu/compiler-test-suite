  implicit none
  character(5),pointer :: chr_pointer01
  character(3) :: w_character01(3) = "123"
  character(3) :: w_character02(3) = "456"
  allocate(chr_pointer01,source=w_character01(2)//w_character02(2))
end
