  implicit none
  character(5),pointer :: chr_pointer01
  type :: typ01
    character(2) :: w_character01 ="12"
    character(2) :: w_character02 ="34"
    character(2) :: w_character03 ="56"
  end type
  type(typ01) :: w_struct01
  allocate(chr_pointer01,source=w_struct01%w_character01//w_struct01%w_character02//w_struct01%w_character03)
end
