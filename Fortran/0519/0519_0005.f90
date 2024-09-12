subroutine s01
character(:),allocatable::to,fm
call move_alloc(fm,to)
if (allocated(fm))print *,1001
if (allocated(to))print *,1001
end
subroutine s02
character(:),allocatable::to,fm
allocate(fm,source='123')
call move_alloc(fm,to)
if(to/='123')print *,1011
if (allocated(fm))print *,1011
if (.not.allocated(to))print *,1011
end
subroutine s03
character(:),allocatable::to,fm
allocate(to,source='123')
call move_alloc(fm,to)
if (allocated(fm))print *,1021
if (allocated(to))print *,1021
end
subroutine s04
character(:),allocatable::to,fm
do k=0,3
do n=3,0
if (k==0) then
  allocate(to,source='')
else
  allocate(to,source='123'(:k))
endif
if (n==0) then
  allocate(fm,source='')
else 
  allocate(fm,source='abc'(:n))
endif
call move_alloc(fm,to)
if (n==0) then
  if(to/='')print *,1031
else
  if(to/='abc'(:n))print *,1031
endif
if (allocated(fm))print *,1033
if (.not.allocated(to))print *,1034
end do
end do
end
call s01
call s02
call s03
call s04
print *,'pass'
end
