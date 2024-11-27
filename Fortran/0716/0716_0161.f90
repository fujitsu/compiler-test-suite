  implicit none
  character(7),pointer :: chr_pointer01(:)
  character(7) :: w_character01 = "abcdefg"
  allocate(chr_pointer01,source=[character(6) :: w_character01,"abcdefg",w_character01])
end
