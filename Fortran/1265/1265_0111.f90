program ssken
  real aa(10)/10*100/,xr
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/0/
  n = npx(1,1) + 1
  kk = 1
  mm = 5
  do i=1,n
     do j=1,n
        do k=1,10
           do ii=1,10
              kk = npx(1,1)*ii+5
           enddo
        end do
! __builtin_get_stack_pointer
        do mm=1,kk
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
        end do
     enddo
  enddo
  write(6,1) aa
  1 format(10f8.2)
end program ssken
