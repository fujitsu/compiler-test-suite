call s(reshape([1,0,0,3,4,0],[2,3]))

contains

subroutine s(dum)
 class(*)::dum(:,:)

if(sizeof(dum)==24) print*,'pass'
end subroutine

end
