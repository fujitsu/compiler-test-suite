  implicit none
  character(6),pointer :: chr_pointer01
  allocate(chr_pointer01,source="12345"(1:3)//"12345"(1:3)) !
  print *,'pass'
end
