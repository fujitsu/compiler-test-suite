program ssken
  real aa(10)/10*100/,xr
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/
  equivalence(mm,me)
  n = npx(1,1)
  mm = npx(1,1)+4

  do i=1,n
     do j=me, n
! __builtin_get_stack_pointer
        do mm=npx(1,1),10
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
        end do
     enddo
  enddo
  write(6,1) aa
  1 format(10f8.2)
end program ssken
