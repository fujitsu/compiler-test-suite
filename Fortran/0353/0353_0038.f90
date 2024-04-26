program main
  type ty1
     real :: r1
     real :: r2
  end type ty1

  type(ty1) :: tt
  real(kind=4) :: ra,rb
  complex(kind=4) :: aa,bb

  data tt /ty1(3.0,4.0)/
  print *, tt
end
