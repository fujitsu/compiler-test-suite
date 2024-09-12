  
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

  type ty1
     integer(kind=1),pointer :: pia => ia(1,1)
     integer(kind=2),pointer :: pib => ib(2,1)
     integer(kind=4),pointer :: pic => ic(3,2)
     integer(kind=8),pointer :: pid => id(4,2)
     real(kind=4),pointer  :: pra => ra(1,1)
     real(kind=8),pointer  :: prb => rb(2,1)
     real(kind=16),pointer :: prc => rc(4,2)
     complex(kind=4),pointer  :: pxa => xa(1,1)
     complex(kind=8),pointer  :: pxb => xb(2,1)
     complex(kind=16),pointer :: pxc => xc(3,2)
     logical(kind=1),pointer :: pla => la(1,1)
     logical(kind=2),pointer :: plb => lb(2,2)
     logical(kind=4),pointer :: plc => lc(3,3)
     logical(kind=8),pointer :: pld => ld(1,3)
     character(kind=1),pointer :: pca => ca(5,2)
     character(kind=1,len=2),pointer :: psa => sa(2,3)
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
