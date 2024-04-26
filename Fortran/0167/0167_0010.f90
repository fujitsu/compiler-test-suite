module aaa
  integer ,pointer :: ppp
  integer,allocatable:: bbb
end
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
module qq1
use aaa
use aaa,only:zzz=>bbb
end
module qq2
use aaa
use aaa,only:vvv=>bbb
end
module qq3
use aaa
use aaa,only:vv1=>bbb
end
module qq4
use aaa
use aaa,only:vv2=>bbb
end
module qq5
use aaa
use aaa,only:vv3=>bbb
end
module qq6
use aaa
use aaa,only:vv4=>bbb
end
module qq7
use aaa
use aaa,only:vv5=>bbb
end
module xxx
use qq1
use qq2
use qq3
use qq4
use qq5
use qq6
use qq7
  use H
  use K
  use K,only:b4=>b3
  use K,only:p4=>b3
  use K,only:l4=>b3
  use K,only:m4=>x3
  use K,only:n4=>b3
  use K,only:j4=>x3
  use P
  use P,only:f2=>f1
  use P,only:x3=>t1
equivalence (k1,k2)
end module
subroutine s1()
use xxx
end subroutine s1
