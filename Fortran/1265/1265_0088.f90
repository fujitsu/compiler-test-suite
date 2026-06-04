program ssken
  real aa(10)/10*100/,xr,bb(10),cc(10)
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/

  n = npx(1,1)

!OCL LOOP_FISSION_THRESHOLD(1)
  do i=1,n
     do j=1,n
! __builtin_get_stack_pointer
!OCL LOOP_FISSION_TARGET(CL)
        do mm=npx(i,j),10
           xr = log(xx(mm))-exp(vx(mm)) * sin(aa(mm))
!!ocl fission_point
           aa(mm) = xr - sin(vx(mm))
        end do
     enddo
  enddo

  write(6,1) aa
  write(6,*) mm
  1 format(10f8.2)
end program ssken
