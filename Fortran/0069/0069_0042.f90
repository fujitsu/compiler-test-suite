  implicit none
  character(:),pointer :: chr_pointer00(:)
  character(3),pointer :: chr_pointer01(:)
  character(3) :: w_character01 = "123"

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

  print *,'pass'
end
