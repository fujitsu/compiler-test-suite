 subroutine sub()
 character(:),allocatable::y3
integer,parameter :: cnta(1)=20
associate(nn=>cnta(1))
block
 allocate(character(nn)::y3)
end block
end associate

 end

 call sub

 print *,'sngg629r : pass'
 end

