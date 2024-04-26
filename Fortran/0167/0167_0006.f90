module H
  integer,pointer    :: a3
end module H
module G
  integer,allocatable:: d1
end module G

module K
  use H,only:b3=>a3
  use H,only:x3=>a3
equivalence (i1,i2)
end module K

module P
  use G,only:f1=>d1
  use G,only:t1=>d1
end module P

call s1()
print *,'pass'
end
subroutine s1()
  use H
  use K
  use K,only:b4=>b3
  use P
  use P,only:f2=>f1
equivalence (k1,k2)
end subroutine s1
