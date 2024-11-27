  implicit none
  character(5),pointer :: chr_pointer01(:)
  character(6) :: w_character01 = "abcdef"
  allocate(chr_pointer01,source=[w_character01,"abcdef",w_character01])
end
