  implicit none
  character(7),pointer :: chr_pointer01(:)
  character(7) :: w_character01 = "1234567"
  allocate(chr_pointer01,source=[character(6) :: "1234567",w_character01,"1234567"])
end
