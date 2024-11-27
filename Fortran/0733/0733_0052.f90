program main

type NEXT
  type(TEST), pointer :: p
end type NEXT

TYPE TEST
  INTEGER::NUM
  TYPE(NEXT), DIMENSION(2,2,2)::N
END TYPE TEST

type (TEST), target:: TTT

TTT%NUM = 44
TTT%N(2,1,2)%p=>TTT
if (TTT%N(2,1,2)%p%NUM/=44)print *,'error'
print *,'pass'
end program main
