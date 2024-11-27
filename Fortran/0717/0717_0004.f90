call test01()
print *,"pass"
end

subroutine test01()
integer(kind=1) ,allocatable :: a(:)
character(len=10) ,allocatable :: b
allocate(a(1),source=(/1_1,1_1/))
allocate(a(0),source=(/(1_1,i=1,0)/))
end subroutine

subroutine test02()
integer(kind=1) ,allocatable :: a(:)
integer(kind=1) ,allocatable :: b
allocate(a(1),source=(/a(1)/))
allocate(a(1),source=a(1))
allocate(b,stat=b   )
allocate(b,stat=a(b))
allocate(a(1),stat=a(b))
end subroutine
