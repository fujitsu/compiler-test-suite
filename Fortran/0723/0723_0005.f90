integer(kind=1) :: k2
parameter(k2=2)
 character(:),allocatable::r(:,:,:)
 character(k2) :: aaa
 integer :: xx2(1)
 parameter (xx2 = len((/character(1+k2+1)::('a',i=1,1)/)))
print *,xx2(1)
call ssss()
contains
 subroutine ssss()
 character(k2) :: bbb (10),bbb2(10)
 integer :: xxx(1) 
 parameter (xxx = len((/character(1+k2+1)::('a',i=1,1)/)))
print *,xxx(1)
 end subroutine
end
