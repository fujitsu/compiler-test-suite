  implicit none
  character(5),pointer :: chr_pointer01(:)
  character(5) :: w_character01 = "abcde"
  allocate(chr_pointer01,source=[character(6) :: w_character01,w_character01])
end
