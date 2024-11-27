  implicit none
  character(5),pointer :: chr_pointer01
  character(3) :: w_character01 ="123"
  character(2) :: w_character02 ="45"
  character(1) :: w_character03 ="6"
  allocate(chr_pointer01,source=w_character01//w_character02//w_character03)
end
