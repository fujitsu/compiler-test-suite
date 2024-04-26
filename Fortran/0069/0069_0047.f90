  implicit none
  print *,'pass'
contains
  subroutine sub01(p_character01)
    character(*) :: p_character01
    character(:),pointer :: chr_pointer00
    character(1),pointer :: chr_pointer01
    character(2),pointer :: chr_pointer02
    character(3),pointer :: chr_pointer03
    type :: typ01
      character(:),pointer:: w_character00(:)
      character(1) :: w_character01(3)
    end type
    type(typ01) :: struct01
    allocate(struct01%w_character00,source=[p_character01])

    allocate(chr_pointer00,source=struct01%w_character01(2))
    allocate(chr_pointer01,source=struct01%w_character01(2))
    allocate(chr_pointer01,source=struct01%w_character00(2))

    allocate(chr_pointer00,source=struct01%w_character01(2)//struct01%w_character01(2))
    allocate(chr_pointer02,source=struct01%w_character01(2)//struct01%w_character01(2))
    allocate(chr_pointer02,source=struct01%w_character01(2)//struct01%w_character00(2))

    allocate(chr_pointer00,source=struct01%w_character01(2)//struct01%w_character01(2)//struct01%w_character01(2))
    allocate(chr_pointer03,source=struct01%w_character01(2)//struct01%w_character01(2)//struct01%w_character01(2))
    allocate(chr_pointer03,source=struct01%w_character01(2)//struct01%w_character01(2)//struct01%w_character00(2))

    allocate(chr_pointer00,source=struct01%w_character01(2)//"1"//struct01%w_character01(2))
    allocate(chr_pointer03,source=struct01%w_character01(2)//"1"//struct01%w_character01(2))
    allocate(chr_pointer03,source=struct01%w_character01(2)//"1"//struct01%w_character00(2))
  end subroutine
end
