call s(reshape([1,0,0,3,4,0],[2,3]))

contains

subroutine s(dum)
 class(*),target::dum(:,:)
 class(*),allocatable::al(:,:)
 allocate(al,source=dum)
if(sizeof(a1)==4)print*,'pass'
end subroutine

end
