parameter(k2=2)
 character(:),allocatable::r(:,:,:)
 character(k2) :: aaa
 allocate(character(k2+1)::r(2,1,3))
if (len(r)/=3) print *,211
if (len(aaa)/=2) print *,203
deallocate(r)
call ssss(k2)
print *,'pass'
contains
 subroutine ssss(k2)
 character(k2) :: bbb
 allocate(character(k2+1)::r(2,1,3)) 
if (len(r)/=3) print *,201
if (len(bbb)/=2) print *,202
 end subroutine
end
