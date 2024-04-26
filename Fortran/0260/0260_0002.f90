program main
implicit none
type(character(len=10)) :: v
type(character*20) :: h
type(character(kind=1,len=30)) :: m

call char_lady(v)
call char_lady(h)
call char_lady(m)
print*, "Pass"
end program main

subroutine char_lady(word)
  implicit none
  type(character(len=*)), intent(in) :: word
  if(len(word) /= 10 .and. len(word) /= 20 .and. len(word) /= 30) print *,101
end subroutine char_lady
