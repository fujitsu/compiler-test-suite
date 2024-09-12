  
  integer(kind=1),target :: ia(2) = (/1_1, 10_1/)
  integer(kind=2),target :: ib(2) = (/2_2, 20_2/)
  integer(kind=4),target :: ic(2) = (/3_4, 30_4/)
  integer(kind=8),target :: id(2) = (/4_8, 40_8/)
  real(kind=4),target  :: ra(2) = (/1.0_4, 10.0_4/)
  real(kind=8),target  :: rb(2) = (/2.0_8, 20.0_8/)
  real(kind=16),target :: rc(2) = (/3.0_16, 30.0_16 /)
  complex(kind=4),target  :: xa(2) = (/(1.0_4,10.0_4), (11.0_4,111.0_4)/)
  complex(kind=8),target  :: xb(2) = (/(2.0_8,20.0_8), (22.0_8,222.0_8)/)
  complex(kind=16),target :: xc(2) = (/(3.0_16,30.0_16), (33.0_16,333.0_16)/)
  logical(kind=1),target :: la(2) = (/.TRUE., .FALSE./)
  logical(kind=2),target :: lb(2) = (/.TRUE., .FALSE./)
  logical(kind=4),target :: lc(2) = (/.TRUE., .FALSE./)
  logical(kind=8),target :: ld(2) = (/.TRUE., .FALSE./)
  character(kind=1),target :: ca(2) = (/1_'x', 1_'y'/)
  character(kind=1,len=3),target :: sa(2) = (/1_'abc', 1_'def'/)

  type ty1
     integer(kind=1),pointer :: pia(:) => ia
     integer(kind=2),pointer :: pib(:) => ib
     integer(kind=4),pointer :: pic(:) => ic
     integer(kind=8),pointer :: pid(:) => id
     real(kind=4),pointer  :: pra(:) => ra
     real(kind=8),pointer  :: prb(:) => rb
     real(kind=16),pointer :: prc(:) => rc
     complex(kind=4),pointer  :: pxa(:) => xa
     complex(kind=8),pointer  :: pxb(:) => xb
     complex(kind=16),pointer :: pxc(:) => xc
     logical(kind=1),pointer :: pla(:) => la
     logical(kind=2),pointer :: plb(:) => lb
     logical(kind=4),pointer :: plc(:) => lc
     logical(kind=8),pointer :: pld(:) => ld
     character(kind=1),pointer :: pca(:) => ca
     character(kind=1,len=3),pointer :: psa(:) => sa
  end type ty1
  type (ty1) :: str

  print *, str%pia
  print *, str%pib
  print *, str%pic
  print *, str%pid
  print *, str%pra
  print *, str%prb
  print *, str%prc
  print *, str%pxa
  print *, str%pxb
  print *, str%pxc
  print *, str%pla
  print *, str%plb
  print *, str%plc
  print *, str%pld
  print *, str%pca
  print *, str%psa
end program
