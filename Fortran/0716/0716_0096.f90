  implicit none
  character(5),pointer :: chr_pointer01
  allocate(chr_pointer01,source="123"//"45"//"6")
end
