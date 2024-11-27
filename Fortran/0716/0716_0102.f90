  implicit none
  character(5),pointer :: chr_pointer01
  character(3) :: w_character01 ="123"
  character(3) :: w_character02 ="456"
  allocate(chr_pointer01,source=w_character01//w_character02)
end
