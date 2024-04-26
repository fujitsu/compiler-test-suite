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

module Hp
 use H 
end

module Kp
 use K,only:a3=>b3
 use K,only:z3=>c3
 use K,only:s3=>d3
end

module Pp
 use P,only:d1=>f1
 use P,only:z1=>g1
 use P,only:s1=>i1
end

module Pa
  use H,only:f2=>d1
end module Pa

subroutine s1()
  use H
  use K,only:b3,c3,d3
  use P,only:f1,g1,h1,i1
end subroutine s1
subroutine s2()
  use Hp
  use Kp,only:z3
  use Pp,only:s1
end subroutine s2
subroutine w3()
  use H
  use Kp
  use Pa
  use P,only:f1,g1
end subroutine w3

call s1()
call s2()
call w3()
print *,'pass'
end
