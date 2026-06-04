program ssken
  real aa(10)/10*100/,xr,bb(10)/10*0/
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/
  n = npx(1,1)
  mm = npx(1,1)+1

  do i=1,n
     do j=1,n+3
        do mm=mm-npx(1,1),5
           bb(j) = mm
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = aa(mm) + xr
        end do
     enddo
  enddo

  write(6,1) aa
  write(6,1) bb
  1 format(10f8.2)
end program ssken
