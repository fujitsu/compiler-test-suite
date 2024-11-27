  implicit none
  character(7),pointer :: chr_pointer01
  character(6) :: w_character01(3) ="123456"
  allocate(chr_pointer01,source=w_character01(2))
end
