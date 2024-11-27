call test01()
print *,"pass"
end

subroutine test01()
integer(kind=1) ,allocatable :: a(:)
character(len=10) ,allocatable :: b
allocate(a,source=(/1_1/))
end subroutine
