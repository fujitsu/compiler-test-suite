  
  integer(kind=1),target :: ia(2) = (/1_1,10_1/)
  integer(kind=2),target :: ib(2) = (/2_2,20_2/)
  integer(kind=4),target :: ic(2) = (/3_4,30_4/)
  integer(kind=8),target :: id(2) = (/4_8,40_8/)
  real(kind=4),target  :: ra(2) = (/1.0_4, 10.0_4/)
  real(kind=8),target  :: rb(2) = (/2.0_8, 20.0_8/)
  real(kind=16),target :: rc(2) = (/3.0_16, 30.0_16 /)
  complex(kind=4),target  :: xa(2) = (/(1.0_4,10.0_4), (11.0_4,111.0_4)/)
  complex(kind=8),target  :: xb(2) = (/(2.0_8,20.0_8), (22.0_8,222.0_8)/)
  complex(kind=16),target :: xc(2) = (/(3.0_16,30.0_16), (33.0_16,333.0_16) /)
  logical(kind=1),target :: la(2) = (/.TRUE., .FALSE./)
  logical(kind=2),target :: lb(2) = (/.TRUE., .FALSE./)
  logical(kind=4),target :: lc(2) = (/.TRUE., .FALSE./)
  logical(kind=8),target :: ld(2) = (/.TRUE., .FALSE./)
  character(kind=1),target :: ca(2) = (/1_'x', 1_'y'/)
  character(kind=1,len=3),target :: sa(2) = (/1_'abc', 1_'def'/)

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

  data pia /ia(2)/
  data pib /ib(1)/
  data pic /ic(2)/
  data pid /id(1)/

  data pra /ra(2)/
  data prb /rb(1)/
  data prc /rc(2)/

  data pxa /xa(1)/
  data pxb /xb(2)/
  data pxc /xc(1)/
  
  data pla /la(2)/
  data plb /lb(1)/
  data plc /lc(2)/
  data pld /ld(1)/

  data pca /ca(2)/
  data psa /sa(1)/

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
