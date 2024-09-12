call s(reshape([1,0,0,3,4,0],[2,3]))
contains
subroutine s(dum)
class(*)::dum(:,:)
print*,size(dum)
end subroutine
end
