module H
  integer,pointer    :: a3
  integer,allocatable:: d1
end module H

module K
  use H,only:b3=>a3
equivalence (i1,i2)
end module K

module P
  use H,only:f1=>d1
equivalence (j1,j2)
end module P

call s1()
print *,'pass'
end
subroutine s1()
  use H
  use K
  use P
equivalence (k1,k2)
end subroutine s1

