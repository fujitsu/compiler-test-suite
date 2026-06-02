program ssken
  real aa(10)/10*100/,xr
  real xx(10)/10*2/,vx(10)/10*5/
  integer npx(1,1)/1/,bb(10)/1,2,3,4,5,6,7,8,9,10/,tmp

  n = npx(1,1)

  do i=1,n
     do j=1,n
        tmp = bb(j)
        do mm=npx(tmp,1),10
           xr = xx(mm)-vx(mm)
!OCL FISSION_POINT
           aa(mm) = xr+mm
        end do
     enddo
  enddo

  write(6,1) aa
  1 format(10f8.2)
end program ssken
