  implicit none
  character(5),pointer :: chr_pointer01
  type :: typ01
    character(3) :: w_character01 ="123"
    character(3) :: w_character02 ="456"
  end type
  type(typ01) :: w_struct01
  allocate(chr_pointer01,source=w_struct01%w_character01//w_struct01%w_character02)
end
