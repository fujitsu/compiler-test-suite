program main
contains
subroutine aaa()
!$pragma c(aaa)
end subroutine
subroutine bbb()
!$pragma c(bbb)
end subroutine
subroutine ccc()
!$pragma c(ccc)
end subroutine
subroutine ddd() bind(C)
!$pragma c(ddd)
end subroutine
subroutine eee() bind(C)
!$pragma c(eee)
end subroutine
subroutine fff() bind(C)
!$pragma c(fff)
end subroutine
end program
