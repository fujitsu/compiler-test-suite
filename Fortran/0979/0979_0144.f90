implicit none 
print *,"pass"
contains
subroutine s(a)
value ::a
integer :: a
end subroutine
end

subroutine sub1()
implicit none
contains
subroutine s(a)
integer :: a
value ::a
end subroutine
end

subroutine sub2()
implicit none
contains
subroutine s(a)
character(*) :: a*(1)
value ::a
end subroutine
end

subroutine sub3()
implicit none
contains
subroutine s(a)
implicit character(*)(a)
value ::a
character(1) :: a
end subroutine
end

subroutine sub4()
implicit none
contains
subroutine s(a,n)
implicit character(n)(a)
integer :: n
value ::a
integer ,parameter :: nn=1
character(nn) :: a
end subroutine
end

subroutine sub5()
implicit none
contains
subroutine s(a,n)
implicit character(n)(a)
integer :: n
value ::a
character(1) :: a
end subroutine
end

subroutine sub5a()
implicit none
contains
subroutine s(a,n)
implicit character(n)(a)
integer :: n
value ::a
integer ,parameter :: nn =1 
character :: a*(nn)
end subroutine
end

subroutine sub6()
implicit character(n)(a)
contains
subroutine s(a,n)
integer :: n
value ::a
character(1) :: a
end subroutine
end

subroutine sub7()
implicit character(999)(a)
contains
subroutine s(a,n)
integer :: n
value ::a
end subroutine
end


subroutine sub8()
implicit character(n)(a)
contains
subroutine s(a,n)
integer :: n
value ::a
character(1) :: a
end subroutine
end






