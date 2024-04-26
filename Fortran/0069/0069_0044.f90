  implicit none
  print *,'pass'
contains
  subroutine sub01(p_integer01)
    integer :: p_integer01
    character(:),pointer :: chr_pointer00
    character(5),pointer :: chr_pointer01
    character(p_integer01) :: w_character01
    w_character01 ="4"
    allocate(chr_pointer00,source="123456")
    allocate(chr_pointer01,source="12345")
    allocate(chr_pointer00,source="123"//"456")
    allocate(chr_pointer01,source="123"//"45")
    allocate(chr_pointer00,source="123"//"4"//"56")
    allocate(chr_pointer01,source="123"//"4"//"5")
    allocate(chr_pointer00,source="123"//w_character01//"56")
    allocate(chr_pointer01,source="123"//w_character01//"5")

    print *,'pass'
  end subroutine
end
