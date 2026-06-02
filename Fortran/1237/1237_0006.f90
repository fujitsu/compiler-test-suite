implicit none
integer :: ido
do ido=1,2
associate( k=> 2)
 block
  save
  character(k) ,allocatable ::arr(:)
if (ido==1) then
  allocate(arr(2))
  arr(1)='ab'
  arr(2)='cd'
   write(22,*) arr(2)
  if (arr(1)/='ab') print *,700,arr(1)
  if (arr(2)/='cd') print *,800,arr(2)
else
  if (arr(1)/='ab') print *,700,arr(1)
  if (arr(2)/='cd') print *,800,arr(2)
endif
 end block
end associate
end do
print *,'snfm0024 : pass'
end
