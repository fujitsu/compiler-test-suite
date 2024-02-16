  implicit none
  character(5),pointer :: chr_pointer01(:)
  character(5) :: w_character01(3) = "12345"
  allocate(chr_pointer01,source=w_character01(1:3))
  print *,'pass'
end
