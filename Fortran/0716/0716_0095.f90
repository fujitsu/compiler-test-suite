  implicit none
  character(7),pointer :: chr_pointer01
  allocate(chr_pointer01,source="123"//"456")
end