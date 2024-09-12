call s(reshape([1,0,0,3,4,0],[2,3]))

contains

subroutine s(dum)
 class(*),target::dum(:,:)
 class(*),allocatable::al(:,:)
 allocate(al,source=dum)
print*,shape(al),':2 3 is pass'
end subroutine

end
