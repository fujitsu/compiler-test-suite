  implicit none
  character(5),pointer :: chr_pointer01(:)
  character(6) :: w_character01 = "12345"
  allocate(chr_pointer01,source=[character(6) :: "12345",w_character01,"12345"])
end
