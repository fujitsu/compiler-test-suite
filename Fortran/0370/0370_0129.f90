
  integer(kind=1),target :: ia(4,2) = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
  integer(kind=2),target :: ib(4,2) = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
  integer(kind=4),target :: ic(4,2) = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
  integer(kind=8),target :: id(4,2) = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
  real(kind=4),target  :: ra(4,2) = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0/),(/4,2/))
  real(kind=8),target  :: rb(4,2) = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0/),(/4,2/))
  real(kind=16),target :: rc(4,2) = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0/),(/4,2/))
  complex(kind=4),target  :: xa(3,2) = reshape((/(1.0,10.0),(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0),(6.0,60.0)/),(/3,2/))
  complex(kind=8),target  :: xb(3,2) = reshape((/(1.0,10.0),(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0),(6.0,60.0)/),(/3,2/))
  complex(kind=16),target :: xc(3,2) = reshape((/(1.0,10.0),(2.0,20.0),(3.0,30.0),(4.0,40.0),(5.0,50.0),(6.0,60.0)/),(/3,2/))
  logical(kind=1),target :: la(3,3) = reshape((/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./),(/3,3/))
  logical(kind=2),target :: lb(3,3) = reshape((/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./),(/3,3/))
  logical(kind=4),target :: lc(3,3) = reshape((/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./),(/3,3/))
  logical(kind=8),target :: ld(3,3) = reshape((/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./),(/3,3/))
  character(kind=1),target :: ca(5,2) = reshape((/'a','b','c','d','e','f','g','h','i','j'/),(/5,2/))
  character(kind=1,len=2),target :: sa(2,4) = reshape((/'ab','cd','ef','gh','ij','kl','mn','op'/),(/2,4/))

  integer(kind=1),pointer :: pia(:,:) => ia(2:3,1:2)
  integer(kind=2),pointer :: pib(:,:) => ib(3:4,1:2)
  integer(kind=4),pointer :: pic(:) => ic(1:3,1)
  integer(kind=8),pointer :: pid(:) => id(1:4,2)
  real(kind=4),pointer  :: pra(:,:) => ra(2:4,1:2)
  real(kind=8),pointer  :: prb(:) => rb(2,1:2)
  real(kind=16),pointer :: prc(:) => rc(1:3,2)
  complex(kind=4),pointer  :: pxa(:,:) => xa(2:3,1:2)
  complex(kind=8),pointer  :: pxb(:) => xb(1:2,2)
  complex(kind=16),pointer :: pxc(:) => xc(3,1:2)
  logical(kind=1),pointer :: pla(:,:) => la(1:3,1:3)
  logical(kind=2),pointer :: plb(:,:) => lb(2:3,2:3)
  logical(kind=4),pointer :: plc(:) => lc(3,1:2)
  logical(kind=8),pointer :: pld(:) => ld(2:3,1)
  character(kind=1),pointer :: pca(:,:) => ca(2:5,1:2)
  character(kind=1,len=2),pointer :: psa(:,:) => sa(1:2,2:4)

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
