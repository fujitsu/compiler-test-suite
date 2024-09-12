call s(reshape([1,0,0,3],[2,2]))

contains

subroutine s(dum)
 class(*),target::dum(:,:)
 class(*),pointer::ptr(:,:)
 ptr=>dum
if(sizeof(ptr)==16) print*,'pass'
end subroutine

end
