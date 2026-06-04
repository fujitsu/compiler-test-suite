program ssken
  real aa(10)/10*100/,xr
  real bb(10)/10*100/,xrb
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/

  n = npx(1,1)

  do i=1,n
     do j=1,n
! __builtin_get_stack_pointer
        do mm=npx(i,j),10
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
!OCL FISSION_POINT
           xrb = xx(mm)+vx(mm)
!OCL FISSION_POINT
           bb(mm) = xrb
        end do
     enddo
  enddo

  write(6,1) aa,bb
  1 format(10f8.2)
end program ssken
