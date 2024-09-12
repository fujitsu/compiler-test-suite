subroutine ss
integer(kind=1) :: k2
parameter(k2=2)
 character(:),allocatable::r(:,:,:)
 call ssss
contains
 subroutine ssss()
 character(k2) :: bbb (10)
 parameter (bbb = (/character(k2)::('a',i=1,10)/))
 allocate(character(k2):: r(1,1,1))
  if (any(bbb/='a'))print *,'1'
 end subroutine
end
call ss
print *,'pass'
end
