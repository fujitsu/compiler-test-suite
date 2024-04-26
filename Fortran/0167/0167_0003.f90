module H
  integer,pointer    :: d2
  integer,allocatable:: d1
end module H

module K
  use H,only:b3=>d1
  use H,only:a3=>d2
end module K

module P
  use K,only:f1=>b3
  use K,only:d1=>b3
end module P

module Pa
  use H,only:x3=>d2
  use H,only:f3=>d1
  use P,only:f2=>f1
  use P,only:b3=>d1
end module Pa

subroutine s1()
  use H
  use K
  use P
end subroutine s1
subroutine s2()
  use H
  use K
  use Pa ,only:b3
end subroutine s2
subroutine s3()
  use H
  use K
  use Pa,only:b3
  use Pa,only:x3
  use Pa,only:f3
  use Pa,only:f2
  use Pa,only:a1=>b3
  use Pa,only:a2=>x3
  use Pa,only:a3=>f3
  use Pa,only:a4=>f2
  use P
end subroutine s3
module mm
  use H
  use K
  use Pa,only:b3
  use Pa,only:x3
  use Pa,only:f3
  use Pa,only:f2
  use Pa,only:s1=>b3
  use Pa,only:s2=>x3
  use Pa,only:s3=>f3
  use Pa,only:s4=>f2
  use P
private s1,s2,s3
end
module m
use mm
use mm,only:f2,f3
end
use m
call s1()
call s2()
call s3()
print *,'pass'
end
