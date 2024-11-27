  implicit none
  character(5),pointer :: chr_pointer01(:)
  allocate(chr_pointer01,source=[character(6) :: "12345","12345"])
end
