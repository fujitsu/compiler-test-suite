program main
  use mod
  print *, aa
  print *, bb
end

module mod
  complex(kind=8) :: aa,bb
  real(kind=4) :: rr
  data aa%im,bb%im /1.0,2.0/
end module mod

