module mod01
contains
subroutine aaa1()
end subroutine
subroutine bbb1()
end subroutine
subroutine ccc1()
end subroutine
!$pragma c(aaa1)
!$pragma c(bbb1)
!$pragma c(ccc1)
end module
module mod02
contains
subroutine aaa2() bind(C)
end subroutine
subroutine bbb2() bind(C)
end subroutine
subroutine ccc2() bind(C)
end subroutine
!$pragma c(aaa2)
!$pragma c(bbb2)
!$pragma c(ccc2)
end module
end
