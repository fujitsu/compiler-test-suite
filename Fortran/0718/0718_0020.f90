program main
!$pragma c(aaa)
!$pragma c(bbb)
!$pragma c(ccc)
!$pragma c(ddd)
!$pragma c(eee)
!$pragma c(fff)
contains
subroutine aaa()
end subroutine
subroutine bbb()
end subroutine
subroutine ccc()
end subroutine
subroutine ddd() bind(C)
end subroutine
subroutine eee() bind(C)
end subroutine
subroutine fff() bind(C)
end subroutine
end program
