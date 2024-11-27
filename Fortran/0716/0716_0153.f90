  implicit none
  character(7),pointer :: chr_pointer01(:)
  allocate(chr_pointer01,source=[character(6) :: "1234567",["1234567"],"1234567"])
end
