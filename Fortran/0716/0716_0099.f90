  implicit none
  character(7),pointer :: chr_pointer01
  character(2) :: w_character01 = "45"
  allocate(chr_pointer01,source="123"//w_character01//"6")
end
