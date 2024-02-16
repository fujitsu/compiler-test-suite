  implicit none
  character(3),pointer :: chr_pointer01
  allocate(chr_pointer01,source="123456"(1:3)) !
  print *,'pass'
end
