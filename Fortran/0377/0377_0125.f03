interface
subroutine test03(arr)
integer :: arr
volatile :: arr
end subroutine
end interface
call test01()
call test02()
call test03(1)
print *,"pass"
end

subroutine test01()
integer ,pointer :: ipp
integer ,pointer :: ippa(:)
integer ,allocatable :: ippaa(:)
volatile :: ipp,ippa,ippaa
allocate(ipp)
allocate(ippa(10))
allocate(ippaa(10))
end

subroutine test02()
integer :: arr
contains
subroutine aaa()
volatile :: arr
end subroutine
end subroutine

subroutine test03(arr)
integer :: arr
contains
subroutine aaa()
volatile :: arr
end subroutine
end subroutine

