module H
  integer,pointer    :: d2
  integer,allocatable:: d1
end module H

module K
  use H,only:b3=>d1
end module K

module P
  use K,only:f1=>b3
end module P

module Pa
  use H,only:x3=>d2
  use H,only:f3=>d1
  use P,only:f2=>f1
end module Pa

subroutine s1()
  use H
  use K
  use P
end subroutine s1
subroutine s2()
  use H
  use K
  use Pa
end subroutine s2
subroutine s3()
  use H
  use K
  use Pa
  use P
end subroutine s3

call s1()
call s2()
call s3()
print *,'pass'
end
