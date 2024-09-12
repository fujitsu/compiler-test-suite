module mod
  type ty0
     sequence
     integer(kind=4)::ii1(10) = 100
     integer,pointer::p => null()
     integer(kind=4)::ii2 = 200
  end type ty0

  type ty1
     sequence
     integer(kind=2)::str1_ia(3) = (/1,2,3/)
     type(ty0) tt(3)
  end type ty1
end module

use mod
  type(ty1)::aa
  print *, aa%tt%ii1(10)
  print *, aa%tt%ii2

end
