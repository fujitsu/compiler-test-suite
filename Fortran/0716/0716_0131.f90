  implicit none
  character(7),pointer :: chr_pointer01(:)
  character(6) :: w_character01 = "123456"
  allocate(chr_pointer01,source=["123456",w_character01,"123456"])
end
