  
  integer(kind=1),target :: ia(2) = (/1_1, 10_1/)
  integer(kind=2),target :: ib(2) = (/2_2, 20_2/)

  type ty1
     integer(kind=1),pointer :: pia(:) => ia
     integer(kind=2),pointer :: pib(:) => ib
  end type ty1
  type (ty1) :: str

  print *, str%pia
  print *, str%pib
end program
