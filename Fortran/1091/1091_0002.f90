 subroutine sub()
 character(:),allocatable::y3
integer,parameter :: cnta(1)=20
character(:),allocatable::c(:)
allocate(y3,source='1')
associate(nn=>cnta(1))
block
 c=[character(nn)::y3]
end block
end associate

 end

 call sub

 print *,'sngg631r : pass'
 end

