call test01()
print *,"pass"
end

subroutine test01()
character(:),allocatable :: b,a(:)
character(2100009999999) :: c
allocate(character(210000) :: b)
allocate(character(2100009999999) :: a(200000))
end subroutine

