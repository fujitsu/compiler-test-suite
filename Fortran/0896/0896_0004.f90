character(len=3), allocatable :: a1(:)
character(len=4), allocatable :: a2(:)
character(len=3), allocatable :: a3(:)
call s1(a1,a2,a3)
contains
subroutine s1(c1,c2,c3)
character(len=*),allocatable ::  c1(:)
character(len=4),allocatable ::  c2(:)
character(len=*),allocatable ::  c3(:)
allocate(c1,c2,c3,source=(/"ABC","ABC","ABC"/))
c3='1234'
end subroutine
end

