type ty
complex,allocatable :: cc(:)
end type
   complex(kind=8) :: cmp(4) = (2,3)
   cmp(1) = (2,3)
   cmp(2) = (4,5)
   cmp(3) = (6,7)
   cmp(4) = (8,9)
   cmp(1:4)%re = cmp(4:1:-1)%re
   if(any(cmp .ne. [(8,3),(6,5),(4,7),(2,9)])) print*,"121",cmp
   print*,"Pass"
end
