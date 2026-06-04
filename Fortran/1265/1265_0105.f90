program ssken
  real aa(10)/10*100/,xr
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/
  n = npx(1,1)
  mm = npx(1,1)+4
!$OMP DO firstprivate(mm) lastprivate(mm)
  do i=1,n
     do j=mm, n
! __builtin_get_stack_pointer
        do mm=npx(1,1),10
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
        end do
     enddo
  enddo
!$OMP END DO
  write(6,1) aa
  1 format(10f8.2)
  write(6,*) mm
end program ssken
