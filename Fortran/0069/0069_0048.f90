  implicit none
  print *,'pass'
contains
  subroutine sub01(p_integer01)
    integer :: p_integer01
    character(:),pointer :: chr_pointer00(:)
    character(3),pointer :: chr_pointer01(:)
    character(p_integer01) :: w_character01
    w_character01 = "4"

    allocate(chr_pointer00(1),source=["123"])
    allocate(chr_pointer01(1),source=["123"])
    allocate(chr_pointer00(2),source=["123","123"])
    allocate(chr_pointer01(2),source=["123","123"])
    allocate(chr_pointer00(3),source=["123","123","123"])
    allocate(chr_pointer01(3),source=["123","123","123"])
    allocate(chr_pointer00(3),source=["123",w_character01,"123"])
    allocate(chr_pointer01(3),source=["123",w_character01,"123"])
    allocate(chr_pointer00(5),source=["123","123",["123","123"],"123"])
    allocate(chr_pointer01(5),source=["123","123",["123","123"],"123"])

    allocate(chr_pointer00,source=["123"])
    allocate(chr_pointer01,source=["123"])
    allocate(chr_pointer00,source=["123","123"])
    allocate(chr_pointer01,source=["123","123"])
    allocate(chr_pointer00,source=["123","123","123"])
    allocate(chr_pointer01,source=["123","123","123"])
    allocate(chr_pointer00,source=["123",w_character01,"123"])
    allocate(chr_pointer01,source=["123",w_character01,"123"])
    allocate(chr_pointer00,source=["123","123",["123","123"],"123"])
    allocate(chr_pointer01,source=["123","123",["123","123"],"123"])

  end subroutine
end
