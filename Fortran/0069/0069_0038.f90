  implicit none
  print *,'pass'
contains
  subroutine sub01(p_integer01)
    integer :: p_integer01
    character(:),pointer :: chr_pointer00
    character(1),pointer :: chr_pointer01
    character(2),pointer :: chr_pointer02
    character(3),pointer :: chr_pointer03
    character(p_integer01) :: w_character00
    character(1) :: w_character01 = "1"

    w_character00 = "123"
    allocate(chr_pointer00,source=w_character01)
    allocate(chr_pointer01,source=w_character01)
    allocate(chr_pointer01,source=w_character00)

    allocate(chr_pointer00,source=w_character01//w_character01)
    allocate(chr_pointer02,source=w_character01//w_character01)
    allocate(chr_pointer02,source=w_character01//w_character00)

    allocate(chr_pointer00,source=w_character01//w_character01//w_character01)
    allocate(chr_pointer03,source=w_character01//w_character01//w_character01)
    allocate(chr_pointer03,source=w_character01//w_character01//w_character00)

    allocate(chr_pointer00,source=w_character01//"1"//w_character01)
    allocate(chr_pointer03,source=w_character01//"1"//w_character01)
    allocate(chr_pointer03,source=w_character01//"1"//w_character00)
  end subroutine
end
