module mod
  type ty0
     integer,allocatable :: aa
     integer :: arr(10)=1
  end type ty0
  type(ty0) ::str
end module mod

subroutine sub1
use mod
allocate(str%aa)
str%aa = 100
print *,str%aa
print *,str%arr
end subroutine sub1

subroutine sub2
use mod
str%aa = 200
end subroutine sub2


use mod
print *,str%arr
call sub1()
call sub2()
print *,str%aa
print *,str%arr

str%aa=50
str%arr(5)=3
print *,str%aa
print *,str%arr
end

