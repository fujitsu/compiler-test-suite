  implicit none
  character(3),pointer :: chr_pointer01
  type :: typ01
    character(5) :: w_character01 = "12345"
  end type
  type(typ01) :: w_struct01
  allocate(chr_pointer01,source=w_struct01%w_character01(1:3))
  print *,'pass'
end
