subroutine sub(ia,inx,iny)
integer,allocatable,save::coordx(:,:)
if (.not.allocated(coordx)) then
 allocate(coordx(inx,iny))
 coordx=1
endif
ia=ia+coordx(inx,iny)
deallocate(coordx)
end subroutine
ia=0
do inx=5,3,-1
do iny=4,3,-1
call       sub(ia,inx,iny)
end do
end do
if (ia/=6)print *,'error'
print *,'pass'
end
