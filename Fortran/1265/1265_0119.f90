program ssken
  real aa(10)/10*100/,xr,bb(10)/10*0/
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/
  n = npx(1,1)
  mm = 5
  do i=1,n
     do j=1,n
        do mm=1,npx(1,1)*9
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr
        end do
        do ii=1,n
           do k=1,mm
              bb(k) = bb(k) + 1
           end do
        end do
     enddo
  enddo
  write(6,1) aa
  write(6,1) bb
  1 format(10f8.2)
end program ssken
