  implicit none
  character(5),pointer :: chr_pointer01(:)
  allocate(chr_pointer01,source=["123456","123456"])
end
