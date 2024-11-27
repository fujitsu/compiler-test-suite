  implicit none
  character(7),pointer :: chr_pointer01
  type :: typ01
    character(6) :: w_character01 ="123456"
  end type
  type(typ01) :: w_struct01
  allocate(chr_pointer01,source=w_struct01%w_character01)
end
