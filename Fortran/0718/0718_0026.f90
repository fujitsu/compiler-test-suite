module mod01
contains
subroutine aaa01()
end subroutine
subroutine bbb01()
end subroutine
subroutine ccc01()
end subroutine
end module
module mod02
contains
subroutine aaa02() bind(C)
end subroutine
subroutine bbb02() bind(C)
end subroutine
subroutine ccc02() bind(C)
end subroutine
end module


!$pragma c(aaa01)
!$pragma c(bbb01)
!$pragma c(ccc01)
!$pragma c(aaa02)
!$pragma c(bbb02)
!$pragma c(ccc02)
program main
use mod01
use mod02
end
