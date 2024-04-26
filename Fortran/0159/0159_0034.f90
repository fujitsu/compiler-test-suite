module H
  integer,pointer    :: a3
  integer,pointer    :: d1=>null()
end module H

module K
  use H,only:b3=>a3
  use H,only:c3=>a3
  use H,only:d3=>a3
end module K

module P
  use H,only:f1=>d1
  use H,only:g1=>d1
  use H,only:h1=>d1
  use H,only:i1=>d1
end module P

module Pa
  use H,only:f2=>d1
end module Pa

subroutine s1()
  use H
  use K
  use P
end subroutine s1
subroutine s2()
  use H
  use K,only:b3
  use Pa
end subroutine s2
subroutine s3()
  use H
  use K
  use Pa
  use P,only:f1,g1
end subroutine s3

call s1()
call s2()
call s3()
print *,'pass'
end
