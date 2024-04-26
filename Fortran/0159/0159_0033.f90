module H
  integer,pointer    :: a3
  integer,allocatable:: d1
end module H

module K
  use H,only:b3=>a3
end module K

module P
  use H,only:f1=>d1
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
