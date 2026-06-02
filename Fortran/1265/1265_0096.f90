program ssken
  real aa(10)/10*100/,xr
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/

  n = npx(1,1)
  mm = 5
!$OMP PARALLEL private(xr) &
!$OMP shared(npx,n,xx,vx,aa)
! __builtin_get_stack_pointer
  do i=1,n
     do j=1,n
        do mm=npx(1,1),10
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
        end do
     enddo
  enddo
!$OMP END PARALLEL
  write(6,1) aa
  1 format(10f8.2)
end program ssken
