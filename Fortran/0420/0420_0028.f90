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

subroutine s1()
  use H
  use K
  use P
interface
subroutine alc(a3,d1)
  integer,pointer    :: a3
  integer,allocatable:: d1
end subroutine
end interface
call alc(a3,d1)
end subroutine s1

call s1()
print *,'pass'
end

subroutine alc(a3,d1)
  integer,pointer    :: a3
  integer,allocatable:: d1
allocate(a3,d1)
end
