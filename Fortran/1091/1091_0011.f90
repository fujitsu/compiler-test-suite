 subroutine sub()
 character(:),allocatable::y3
integer,parameter :: cnta(1)=20
character(:),allocatable::c(:)
allocate(y3,source='1')
associate(nn=>cnta(1))
block
 c=[character(nn)::y3]
 if (20    /=nn) print *,2921
 if (len(c)/=nn) print *,2929,len(c)
 if (size(c)/=1) print *,2928
 if (c(1)/='1') print *,29281
end block
end associate

 end

 call sub

 print *,'sngg640r : pass'
 end

