  
  integer(kind=1),target :: ia = 1_1
  integer(kind=2),target :: ib = 2_2
  integer(kind=4),target :: ic = 3_4
  integer(kind=8),target :: id = 4_8
  real(kind=4),target  :: ra = 1.0_4
  real(kind=8),target  :: rb = 2.0_8
  real(kind=16),target :: rc = 3.0_16
  complex(kind=4),target  :: xa = (1.0_4,10.0_4) 
  complex(kind=8),target  :: xb = (2.0_8,20.0_8) 
  complex(kind=16),target :: xc = (3.0_16,30.0_16) 
  logical(kind=1),target :: la = .TRUE.
  logical(kind=2),target :: lb = .TRUE.
  logical(kind=4),target :: lc = .TRUE.
  logical(kind=8),target :: ld = .TRUE.
  character(kind=1),target :: ca = 1_'x'
  character(kind=1,len=3),target :: sa = 1_'abc'

  integer(kind=1),pointer :: pia
  integer(kind=2),pointer :: pib
  integer(kind=4),pointer :: pic
  integer(kind=8),pointer :: pid
  real(kind=4),pointer  :: pra
  real(kind=8),pointer  :: prb
  real(kind=16),pointer :: prc
  complex(kind=4),pointer  :: pxa
  complex(kind=8),pointer  :: pxb
  complex(kind=16),pointer :: pxc
  logical(kind=1),pointer :: pla
  logical(kind=2),pointer :: plb
  logical(kind=4),pointer :: plc
  logical(kind=8),pointer :: pld
  character(kind=1),pointer :: pca
  character(kind=1,len=3),pointer :: psa
  
  data pia /ia/
  data pib /ib/
  data pic /ic/
  data pid /id/

  data pra /ra/
  data prb /rb/
  data prc /rc/

  data pxa /xa/
  data pxb /xb/
  data pxc /xc/
  
  data pla /la/
  data plb /lb/
  data plc /lc/
  data pld /ld/

  data pca /ca/
  data psa /sa/

  print *, ia
  print *, ib
  print *, ic
  print *, id
  print *, ra
  print *, rb
  print *, rc
  print *, xa
  print *, xb
  print *, xc
  print *, la
  print *, lb
  print *, lc
  print *, ld
  print *, ca
  print *, sa
  
  print *, pia
  print *, pib
  print *, pic
  print *, pid
  print *, pra
  print *, prb
  print *, prc
  print *, pxa
  print *, pxb
  print *, pxc
  print *, pla
  print *, plb
  print *, plc
  print *, pld
  print *, pca
  print *, psa
end program
