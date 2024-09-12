module m
type base
  integer::bb
  contains
  final:: prc_final
end type

contains
pure SUBROUTINE prc_final(dmy)
  TYPE(base),INTENT(IN)::dmy
END SUBROUTINE
end module

subroutine s1()
use m
integer :: c
write(1,*)func(c)  
rewind 1
read(1,*) k
if(k/=11) print *,101
print *,'pass'
contains
pure function func(dmy)
  integer,intent(in)::dmy
  type(base)::func
  func%bb = 11
end function
end subroutine

interface
subroutine s1()
end subroutine
end interface
call s1()
end
