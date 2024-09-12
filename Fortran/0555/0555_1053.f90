call s(reshape([1,0,0,3,4,0],[2,3]))

contains

subroutine s(dum)
 class(*)::dum(:,:)

print*,shape(dum),':2 3 is pass'
end subroutine

end
