subroutine sub()
implicit none
integer :: ido,i2=2
do ido=1,2
associate( k=> i2)
 block
! -Nsave  save
 save
  character(k) ,allocatable ::arr(:)
if (ido==1) then
  allocate(arr(2))
  arr(1)='ab'
  arr(2)='cd'
   write(23,*) arr(2)
  if (arr(1)/='ab') print *,700,arr(1)
  if (arr(2)/='cd') print *,800,arr(2)
else
  if (arr(1)/='ab') print *,700,arr(1)
  if (arr(2)/='cd') print *,800,arr(2)
endif
 end block
end associate
end do
end
call sub()
print *,'snfm0025 : pass'
end
