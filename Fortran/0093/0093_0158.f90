type ty
   complex(kind=8) :: cmp(4) = (2,3)
end type
   type(ty) :: obj
   obj%cmp(1) = (2,3)
   obj%cmp(2) = (4,5)
   obj%cmp(3) = (6,7)
   obj%cmp(4) = (8,9)
   obj%cmp(1:4)%re = obj%cmp(4:1:-1)%re
   if(any(obj%cmp .ne. [(8,3),(6,5),(4,7),(2,9)])) print*,"121",obj%cmp
   print*,"Pass"
end
