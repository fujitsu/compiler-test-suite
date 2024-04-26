  implicit none
  print *,'pass'
contains
  subroutine sub01(p_integer01)
    integer :: p_integer01
    character(:),pointer :: chr_pointer00(:)
    character(3),pointer :: chr_pointer01(:)
    character(p_integer01) :: w_character01
    w_character01 = "abc"

    allocate(chr_pointer00(1),source=[w_character01])
    allocate(chr_pointer01(1),source=[w_character01])
    allocate(chr_pointer00(2),source=[w_character01,w_character01])
    allocate(chr_pointer01(2),source=[w_character01,w_character01])
    allocate(chr_pointer00(3),source=[w_character01,w_character01,w_character01])
    allocate(chr_pointer01(3),source=[w_character01,w_character01,w_character01])
    allocate(chr_pointer00(3),source=[w_character01,"abc",w_character01])
    allocate(chr_pointer01(3),source=[w_character01,"abc",w_character01])
    allocate(chr_pointer00(5),source=[w_character01,w_character01,[w_character01,w_character01],w_character01])
    allocate(chr_pointer01(5),source=[w_character01,w_character01,[w_character01,w_character01],w_character01])

    allocate(chr_pointer00,source=[w_character01])
    allocate(chr_pointer01,source=[w_character01])
    allocate(chr_pointer00,source=[w_character01,w_character01])
    allocate(chr_pointer01,source=[w_character01,w_character01])
    allocate(chr_pointer00,source=[w_character01,w_character01,w_character01])
    allocate(chr_pointer01,source=[w_character01,w_character01,w_character01])
    allocate(chr_pointer00,source=[w_character01,"abc",w_character01])
    allocate(chr_pointer01,source=[w_character01,"abc",w_character01])
    allocate(chr_pointer00,source=[w_character01,w_character01,[w_character01,w_character01],w_character01])
    allocate(chr_pointer01,source=[w_character01,w_character01,[w_character01,w_character01],w_character01])

  end subroutine
end
